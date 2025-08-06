import 'package:flutter/material.dart';
import 'package:quiz_grpc_app/proto/quiz.pbgrpc.dart';
import 'package:quiz_grpc_app/services/quiz_client.dart';

// Global variable to store current student ID after login
String? currentStudentId;

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<QuestionResponse> _questions = [];
  int _currentQuestionIndex = 0;
  String? _selectedOption;
  late Stream<QuestionResponse> _questionStream;

  @override
  void initState() {
    super.initState();
    _startQuestionStream();
  }

  void _startQuestionStream() {
    _questionStream = quizClient.receiveQuestions();
    _questionStream.listen(
      (question) {
        setState(() {
          _questions.add(question);
        });
      },
      onError: (error) {
        print('Error receiving question: $error');
      },
    );
  }

  void _submitAnswer() {
    final current = _questions[_currentQuestionIndex];

    if (_selectedOption != null) {
      final answer = AnswerRequest(
        studentId: currentStudentId ?? '',
        questionId: current.questionId,
        selectedAnswer: _selectedOption!,
      );
      quizClient.submitAnswer(answer); // kirim ke server

      setState(() {
        _selectedOption = null;
        if (_currentQuestionIndex < _questions.length - 1) {
          _currentQuestionIndex++;
        }
      });

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Answer submitted')));
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Please select an answer')));
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_questions.isEmpty) {
      return const Scaffold(
        body: Center(child: Text('Waiting for questions...')),
      );
    }

    final current = _questions[_currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LinearProgressIndicator(
              value: (_currentQuestionIndex + 1) / _questions.length,
            ),
            const SizedBox(height: 8),
            Text(
              'Question ${_currentQuestionIndex + 1} of ${_questions.length}',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(current.questionText, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            ...current.choices.map(
              (choice) => RadioListTile<String>(
                title: Text(choice),
                value: choice,
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() { 
                    _selectedOption = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _submitAnswer,
              child: const Text("Submit Answer"),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Clear current student ID
                currentStudentId = null;
                // Navigate back to login page
                Navigator.of(context).pushReplacementNamed('/');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
