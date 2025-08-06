const grpc = require("@grpc/grpc-js");
const protoLoader = require("@grpc/proto-loader");

const packageDef = protoLoader.loadSync("./proto/quiz.proto");
const quizProto = grpc.loadPackageDefinition(packageDef).quiz;

const client = new quizProto.QuizService("localhost:50051", grpc.credentials.createInsecure());

function sendQuestionAsLecturer() {
  const question = {
    questionId: "Q1",
    questionText: "Apa ibu kota Indonesia?",
    choices: ["Jakarta", "Bandung", "Surabaya", "Bali"],
    correctAnswer: "Jakarta",
  };

  client.SendQuestion(question, (err, res) => {
    if (err) console.error("SendQuestion error:", err);
    else console.log("📤 Dosen mengirim soal:", question);
  });
}

function receiveAnswerAsLecturer() {
  const stream = client.ReceiveAnswers({});

  stream.on("data", (data) => {
    console.log("📊 Dosen menerima hasil:", data);
  });

  stream.on("end", () => {
    console.log("❌ Stream ReceiveAnswers selesai");
  });
}

// 1. Dosen terima jawaban
receiveAnswerAsLecturer();

// 2. Kirim soal setelah 2 detik
setTimeout(() => {
  sendQuestionAsLecturer();
}, 2000);
