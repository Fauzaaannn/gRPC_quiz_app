import 'package:grpc/grpc.dart';
import 'package:quiz_grpc_app/proto/quiz.pbgrpc.dart';

class QuizService {
  late ClientChannel _channel;
  late QuizServiceClient _client;

  QuizService() {
    _channel = ClientChannel(
      'localhost', // ganti ke 10.0.2.2 jika pakai emulator Android
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    _client = QuizServiceClient(_channel);
  }

  Future<QuestionResponse> sendQuestion({
    required String questionId,
    required String questionText,
    required List<String> choices,
    required String correctAnswer,
  }) async {
    final request = QuestionRequest(
      questionId: questionId,
      questionText: questionText,
      choices: choices,
      correctAnswer: correctAnswer,
    );
    return await _client.sendQuestion(request);
  }

  Future<QuestionList> getAllQuestions() async {
    return await _client.getAllQuestions(Empty());
  }

  Future<void> shutdown() async {
    await _channel.shutdown();
  }

  /// Mengembalikan stream StudentScore dari server (realtime)
  Stream<StudentScore> getStudentScoresStream() {
    return _client.getStudentScores(Empty());
  }
}
