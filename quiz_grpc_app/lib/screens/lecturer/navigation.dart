import 'package:flutter/material.dart';
import 'package:quiz_grpc_app/screens/lecturer/student_grade_page.dart';
import 'package:quiz_grpc_app/screens/lecturer/send_question_page.dart';

class LecturerNavigation extends StatefulWidget {
  const LecturerNavigation({super.key});

  @override
  State<LecturerNavigation> createState() => _LecturerNavigationState();
}

class _LecturerNavigationState extends State<LecturerNavigation> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = [
    const SendQuestionPage(),
    const StudentGradePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: 'Send Questions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grade),
            label: 'Student Grades',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
