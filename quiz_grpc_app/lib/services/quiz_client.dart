import 'package:grpc/grpc.dart';
import 'package:quiz_grpc_app/proto/quiz.pbgrpc.dart';

class QuizClient {
  late ClientChannel _channel;
  late QuizServiceClient _stub;

  QuizClient() {
    _channel = ClientChannel(
      'localhost', // ganti IP server jika pakai emulator/device fisik
      port: 50051,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    _stub = QuizServiceClient(_channel);
  }

  Stream<QuestionResponse> receiveQuestions() {
    return _stub.receiveQuestion(Empty());
  }

  Future<void> submitAnswer(AnswerRequest request) async {
    await _stub.submitAnswer(request);
  }

  void shutdown() async {
    await _channel.shutdown();
  }
}

// Global instance
final quizClient = QuizClient();

