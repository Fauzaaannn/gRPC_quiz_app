import 'package:flutter/material.dart';
import 'package:quiz_grpc_app/services/quiz_service.dart';
import 'package:quiz_grpc_app/proto/quiz.pb.dart';

class SendQuestionPage extends StatefulWidget {
  const SendQuestionPage({super.key});

  @override
  State<SendQuestionPage> createState() => _SendQuestionPageState();
}

class _SendQuestionPageState extends State<SendQuestionPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _questionController = TextEditingController();
  final List<TextEditingController> _choiceControllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  int? _correctIndex;
  bool _isLoading = false;
  List<Question> _questions = [];

  final QuizService _quizService = QuizService();

  @override
  void initState() {
    super.initState();
    _fetchQuestions();
  }

  Future<void> _fetchQuestions() async {
    try {
      final res = await _quizService.getAllQuestions();
      setState(() {
        _questions = res.questions;
      });
    } catch (e) {
      // handle error
    }
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate() || _correctIndex == null) return;
    setState(() => _isLoading = true);
    try {
      final choices = _choiceControllers.map((c) => c.text).toList();
      final correctAnswer = choices[_correctIndex!];
      await _quizService.sendQuestion(
        questionId: _idController.text,
        questionText: _questionController.text,
        choices: choices,
        correctAnswer: correctAnswer,
      );
      _idController.clear();
      _questionController.clear();
      for (var c in _choiceControllers) c.clear();
      _correctIndex = null;
      await _fetchQuestions();
    } catch (e) {
      // handle error
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tambah Soal Baru')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: _idController,
                        decoration: const InputDecoration(
                          labelText: 'ID Pertanyaan',
                        ),
                        validator:
                            (v) =>
                                v == null || v.isEmpty ? 'Wajib diisi' : null,
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                        controller: _questionController,
                        decoration: const InputDecoration(
                          labelText: 'Pertanyaan',
                        ),
                        validator:
                            (v) =>
                                v == null || v.isEmpty ? 'Wajib diisi' : null,
                      ),
                      const SizedBox(height: 12),
                      const Text('Pilihan Jawaban:'),
                      ...List.generate(_choiceControllers.length, (i) {
                        return Row(
                          children: [
                            Radio<int>(
                              value: i,
                              groupValue: _correctIndex,
                              onChanged: (val) {
                                setState(() => _correctIndex = val);
                              },
                            ),
                            Expanded(
                              child: TextFormField(
                                controller: _choiceControllers[i],
                                decoration: InputDecoration(
                                  labelText: 'Pilihan ${i + 1}',
                                ),
                                validator:
                                    (v) =>
                                        v == null || v.isEmpty
                                            ? 'Wajib diisi'
                                            : null,
                              ),
                            ),
                          ],
                        );
                      }),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _isLoading ? null : _submit,
                          child:
                              _isLoading
                                  ? const SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  )
                                  : const Text('Submit'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            ..._questions.map(
              (q) => Card(
                elevation: 2,
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  title: Text(q.questionText),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('ID: ${q.questionId}'),
                      ...q.choices.asMap().entries.map(
                        (e) => Text(
                          '${String.fromCharCode(65 + e.key)}. ${e.value}${e.value == q.correctAnswer ? " (Benar)" : ""}',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
