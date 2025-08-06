import 'package:flutter/material.dart';
import 'package:quiz_grpc_app/screens/lecturer/navigation.dart';
import 'package:quiz_grpc_app/screens/login.dart';
import 'package:quiz_grpc_app/screens/register.dart';
import 'package:quiz_grpc_app/screens/student/quiz_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/quiz': (context) => const QuizPage(),
        '/lecturer': (context) => const LecturerNavigation(), // Halaman kuis untuk dosen
      },
    );
  }
}
