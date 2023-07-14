import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter26/quiz/quiz_login_screen.dart';
import 'package:flutter26/quiz/quiz_user_profile.dart';
import 'package:flutter26/quiz/start_quiz_screen.dart';

class QuizMainScreen extends StatefulWidget {
  const QuizMainScreen({Key? key}) : super(key: key);

  @override
  State<QuizMainScreen> createState() => _QuizMainScreenState();
}

class _QuizMainScreenState extends State<QuizMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
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
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StartQuizScreen(),
                ),
              ),
              child: const Text("Start QUIZ!"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const QuizProfileScreen(),
                ),
              ),
              child: const Text("Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
