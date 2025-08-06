import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:quiz_grpc_app/proto/quiz.pbgrpc.dart';
import 'package:quiz_grpc_app/proto/quiz.pb.dart';
import 'package:quiz_grpc_app/screens/student/quiz_page.dart'; // for currentStudentId

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  late ClientChannel _channel;
  late QuizServiceClient _stub;

  @override
  void initState() {
    super.initState();
    _channel = ClientChannel(
      'localhost', // Ganti sesuai IP server
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    _stub = QuizServiceClient(_channel);
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _channel.shutdown();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    if (_formKey.currentState!.validate()) {
      final username = _usernameController.text;
      final password = _passwordController.text;

      try {
        final response = await _stub.login(
          AuthRequest(username: username, password: password),
        );

        if (response.success) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Login success as ${response.role}')),
          );

          // Navigasi berdasarkan role
          if (response.role == 'mahasiswa') {
            // Set global studentId for use in QuizPage
            currentStudentId = response.studentId;
            Navigator.pushNamed(context, '/quiz');
          } else if (response.role == 'dosen') {
            Navigator.pushNamed(context, '/lecturer');
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Login failed: ${response.message}')),
          );
        }
      } catch (e) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error: $e')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                validator:
                    (value) =>
                        value == null || value.isEmpty
                            ? 'Please enter your username'
                            : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
                validator:
                    (value) =>
                        value == null || value.isEmpty
                            ? 'Please enter your password'
                            : null,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _handleLogin,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                child: const Text('Login', style: TextStyle(fontSize: 16)),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: const Text('Don\'t have an account? Register here'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
