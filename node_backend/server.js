const grpc = require("@grpc/grpc-js");
const protoLoader = require("@grpc/proto-loader");
const packageDef = protoLoader.loadSync("./proto/quiz.proto"); // memuat file .proto
const quizProto = grpc.loadPackageDefinition(packageDef).quiz; // mengubah hasil parsing .proto service siap pakai

const users = []; // { username, password, role, studentId (jika mahasiswa) }

const students = []; // stream mahasiswa
const lecturers = []; // stream dosen

const questions = []; // untuk menyimpan soal
const answers = []; // untuk menyimpan jawaban mahasiswa

const scores = []; // { studentId: { correct: 0, wrong: 0 } }
const lecturerScoreStreams = []; // { lecturerId: { correct: 0, wrong: 0 } }

// dosen
function SendQuestion(call, callback) {
  const question = call.request; // objek QuestionRequest yang dikirim dosen
  questions.push(question); // simpan soal ke dalam array
  students.forEach((studentStream) => {
    // loop seluruh mahasiswa
    studentStream.write({
      // broadcast soal ke seluruh mahasiswa
      questionId: question.questionId,
      questionText: question.questionText,
      choices: question.choices,
    });
  });
  callback(null, {}); // Empty Return Response
  console.log("SendQuestion:", question); // log soal yang dikirim
}

// CRUD Dosen Soal
function CreateQuestion(call, callback) {
  questions.push(call.request);
  callback(null, {});
}

function GetAllQuestions(call, callback) {
  callback(null, { questions });
}

function UpdateQuestion(call, callback) {
  const index = questions.findIndex(
    (q) => q.questionId === call.request.questionId
  );
  if (index !== -1) questions[index] = call.request;
  callback(null, {});
}

function DeleteQuestion(call, callback) {
  const index = questions.findIndex(
    (q) => q.questionId === call.request.questionId
  );
  if (index !== -1) questions.splice(index, 1);
  callback(null, {});
}

// mahasiswa
function ReceiveQuestion(call) {
  students.push(call);

  // // ✅ Kirim soal terakhir yang ada
  // const latestQuestion = questions[questions.length - 1];
  // if (latestQuestion) {
  //   call.write({
  //     questionId: latestQuestion.questionId,
  //     questionText: latestQuestion.questionText,
  //     choices: latestQuestion.choices,
  //   });
  // }

  // Kirim semua soal yang sudah ada
  questions.forEach((q) => {
    call.write({
      questionId: q.questionId,
      questionText: q.questionText,
      choices: q.choices,
    });
  });

  call.on("cancelled", () => {
    const index = students.indexOf(call);
    if (index !== -1) students.splice(index, 1);
  });

  console.log("ReceiveQuestion: Mahasiswa subscribe");
}

function SubmitAnswer(call, callback) {
  const { studentId, questionId, selectedAnswer } = call.request;

  if (!studentId || !questionId || selectedAnswer === undefined) {
    return callback({
      code: grpc.status.INVALID_ARGUMENT,
      message:
        "Missing required fields: studentId, questionId, or selectedAnswer",
    });
  }

  const user = users.find(
    (u) => u.role === "mahasiswa" && u.studentId === studentId
  );
  if (!user) {
    return callback({
      code: grpc.status.PERMISSION_DENIED,
      message: "Unauthorized: Invalid studentId or not a mahasiswa",
    });
  }

  const question = questions.find((q) => q.questionId === questionId);
  if (!question) {
    return callback({
      code: grpc.status.NOT_FOUND,
      message: "Question not found",
    });
  }

  const isCorrect = question.correctAnswer === selectedAnswer;

  // Update scores
  if (!scores[studentId]) scores[studentId] = { correct: 0, wrong: 0 };

  if (isCorrect) {
    scores[studentId].correct++;
  } else {
    scores[studentId].wrong++;
  }

  // Update lecturers' scores
  broadcastScores();

  const result = {
    studentId,
    questionId,
    isCorrect,
    selectedAnswer,
    timestamp: new Date().toISOString(),
  };

  answers.push(result);

  lecturers.forEach((lecturerStream) => {
    try {
      lecturerStream.write(result);
    } catch (err) {
      console.error("Failed to stream to lecturer:", err.message);
    }
  });

  callback(null, {});
  console.log("SubmitAnswer:", result);
}

// function GetStudentScores(call, callback) {
//   const studentArray = Object.entries(scores).map(([studentId, data]) => ({
//     studentId,
//     correctCount: data.correct,
//     wrongCount: data.wrong,
//   }));
//   callback(null, { students: studentArray });
// }

function GetStudentScores(call) {
  lecturerScoreStreams.push(call);

  // Kirim semua skor yang sudah ada saat subscribe
  Object.entries(scores).forEach(([studentId, data]) => {
    call.write({
      studentId,
      correctCount: data.correct,
      wrongCount: data.wrong,
    });
  });

  call.on("cancelled", () => {
    const idx = lecturerScoreStreams.indexOf(call);
    if (idx !== -1) lecturerScoreStreams.splice(idx, 1);
    console.log("GetStudentScores stream cancelled by client");
  });
}

// Tambahkan fungsi broadcastScores
function broadcastScores() {
  lecturerScoreStreams.forEach((stream) => {
    Object.entries(scores).forEach(([studentId, data]) => {
      stream.write({
        studentId,
        correctCount: data.correct,
        wrongCount: data.wrong,
      });
    });
  });
}

// dosen
function ReceiveAnswers(call) {
  // dipanggil sekali tetapi call tetap aktif
  lecturers.push(call); // menambahkan stream dosen ke dalam array

  // ✅ Kirim semua jawaban yang sudah terkumpul
  answers.forEach((answer) => {
    call.write(answer);
  });

  call.on("cancelled", () => {
    // menghapus stream dosen jika koneksi terputus
    const index = lecturers.indexOf(call); // mencari index stream dosen
    if (index !== -1) lecturers.splice(index, 1); // menghapus stream dosen dari array
  });
  console.log("ReceiveAnswers:", call.request); // log request dari dosen
}

// Auth
function Register(call, callback) {
  const { username, password, role, studentId } = call.request;

  const exists = users.find((u) => u.username === username);
  if (exists)
    return callback(null, { success: false, message: "Username taken" });

  if (role === "mahasiswa") {
    if (!studentId)
      return callback(null, {
        success: false,
        message: "Mahasiswa harus memiliki studentId",
      });

    const sidExists = users.find((u) => u.studentId === studentId);
    if (sidExists)
      return callback(null, {
        success: false,
        message: "Student ID already registered",
      });
  }

  const newUser = { username, password, role };
  if (role === "mahasiswa") newUser.studentId = studentId;

  users.push(newUser);

  callback(null, { success: true, message: "Registered", role });
}

function Login(call, callback) {
  const { username, password } = call.request;
  const user = users.find(
    (u) => u.username === username && u.password === password
  );
  if (!user)
    return callback(null, { success: false, message: "Invalid credentials" });

  callback(null, {
    success: true,
    message: "Login success",
    role: user.role,
    studentId: user.role === "mahasiswa" ? user.studentId : "",
  });
}

const server = new grpc.Server(); // membuat server gRPC baru
server.addService(quizProto.QuizService.service, {
  // menambahkan service QuizService ke server
  Register,
  Login,
  SendQuestion,
  CreateQuestion,
  GetAllQuestions,
  UpdateQuestion,
  DeleteQuestion,
  ReceiveQuestion,
  SubmitAnswer,
  GetStudentScores,
  broadcastScores,
  ReceiveAnswers,
});

server.bindAsync(
  "0.0.0.0:50051",
  grpc.ServerCredentials.createInsecure(),
  () => {
    console.log("gRPC Server running on port 50051");
    server.start();
  }
);
