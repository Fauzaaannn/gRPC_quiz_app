import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:quiz_grpc_app/proto/quiz.pbgrpc.dart';
import 'package:quiz_grpc_app/proto/quiz.pb.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _studentIdController = TextEditingController();
  String _selectedRole = 'mahasiswa';
  final List<String> _roles = ['mahasiswa', 'dosen'];

  late ClientChannel channel;
  late QuizServiceClient stub;

  @override
  void initState() {
    super.initState();
    channel = ClientChannel(
      'localhost', // ganti dengan IP server jika bukan emulator
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    stub = QuizServiceClient(channel);
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _studentIdController.dispose();
    channel.shutdown();
    super.dispose();
  }

  Future<void> _handleSubmit() async {
    if (_formKey.currentState!.validate()) {
      final username = _usernameController.text;
      final password = _passwordController.text;
      final role = _selectedRole;
      final studentId =
          _selectedRole == 'mahasiswa' ? _studentIdController.text : '';

      try {
        final response = await stub.register(
          User(
            username: username,
            password: password,
            role: role,
            studentId: studentId,
          ),
        );

        if (response.success) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Register success: ${response.message}')),
          );
          // TODO: Navigate to login or main screen
          Navigator.of(context).pushReplacementNamed('/');
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Register failed: ${response.message}')),
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
      appBar: AppBar(title: const Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
                validator:
                    (value) =>
                        value == null || value.isEmpty
                            ? 'Please enter a username'
                            : null,
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                validator:
                    (value) =>
                        value == null || value.isEmpty
                            ? 'Please enter a password'
                            : null,
              ),
              const SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: _selectedRole,
                decoration: const InputDecoration(
                  labelText: 'Role',
                  border: OutlineInputBorder(),
                ),
                items:
                    _roles.map((role) {
                      return DropdownMenuItem(value: role, child: Text(role));
                    }).toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      _selectedRole = value;
                    });
                  }
                },
              ),
              const SizedBox(height: 16.0),
              if (_selectedRole == 'mahasiswa')
                Column(
                  children: [
                    TextFormField(
                      controller: _studentIdController,
                      decoration: const InputDecoration(
                        labelText: 'NIM',
                        border: OutlineInputBorder(),
                      ),
                      validator:
                          (value) =>
                              value == null || value.isEmpty
                                  ? 'Please enter your NIM'
                                  : null,
                    ),
                    const SizedBox(height: 16.0),
                  ],
                ),
              ElevatedButton(
                onPressed: _handleSubmit,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: const Text('Register', style: TextStyle(fontSize: 16.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
