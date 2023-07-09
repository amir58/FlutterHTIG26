import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter26/quiz/quiz_admin_questions_screen.dart';
import 'package:flutter26/quiz/quiz_login_screen.dart';

class QuizAdminScreen extends StatefulWidget {
  const QuizAdminScreen({Key? key}) : super(key: key);

  @override
  State<QuizAdminScreen> createState() => _QuizAdminScreenState();
}

class _QuizAdminScreenState extends State<QuizAdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz ADMIN"),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizLoginScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: QuizAdminQuestionsScreen(),

    );
  }
}
