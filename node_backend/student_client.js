const grpc = require("@grpc/grpc-js");
const protoLoader = require("@grpc/proto-loader");

const packageDef = protoLoader.loadSync("./proto/quiz.proto");
const quizProto = grpc.loadPackageDefinition(packageDef).quiz;

const client = new quizProto.QuizService("localhost:50051", grpc.credentials.createInsecure());

function receiveQuestionAsStudent() {
  const stream = client.ReceiveQuestion({});

  stream.on("data", (data) => {
    console.log("📩 Mahasiswa menerima soal:", data);

    // Auto submit jawaban setelah 3 detik
    setTimeout(() => {
      submitAnswerAsStudent(data.questionId);
    }, 3000);
  });

  stream.on("end", () => {
    console.log("❌ Stream ReceiveQuestion selesai");
  });
}

function submitAnswerAsStudent(questionId) {
  const answer = {
    studentId: "S1",
    questionId: questionId,
    selectedAnswer: "Jakarta",
  };

  client.SubmitAnswer(answer, (err, res) => {
    if (err) console.error("❌ SubmitAnswer error:", err);
    else console.log("✅ Mahasiswa kirim jawaban:", answer);
  });
}

// Jalankan stream
receiveQuestionAsStudent();
