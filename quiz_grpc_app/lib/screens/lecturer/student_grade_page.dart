import 'package:flutter/material.dart';
import 'package:quiz_grpc_app/proto/quiz.pbgrpc.dart';
import 'package:quiz_grpc_app/services/quiz_service.dart';

class StudentGradePage extends StatefulWidget {
  const StudentGradePage({super.key});

  @override
  State<StudentGradePage> createState() => _StudentGradePageState();
}

class _StudentGradePageState extends State<StudentGradePage> {
  final List<StudentScore> _scores = [];
  late Stream<StudentScore> _scoreStream;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _fetchScores();
  }

  void _fetchScores() {
    final client = QuizService();
    _scoreStream = client.getStudentScoresStream();
    _scoreStream.listen( // Mendengarkan stream dari server
      (score) { // Callback ketika menerima data baru
        setState(() {
          _scores.removeWhere((s) => s.studentId == score.studentId); // Hapus score lama jika ada
          _scores.add(score); // Tambahkan score baru
          _loading = false; 
        });
      },
      onError: (e) {
        setState(() => _loading = false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Scores')),
      body:
          _loading
              ? const Center(child: CircularProgressIndicator())
              : _scores.isEmpty
              ? const Center(child: Text('No scores available'))
              : ListView(
                padding: const EdgeInsets.all(16),
                children:
                    _scores
                        .map(
                          (score) => Card(
                            elevation: 3,
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'ID: ${score.studentId}',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Benar: ${score.correctCount}',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Salah: ${score.wrongCount}',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList(),
              ),
    );
  }
}
