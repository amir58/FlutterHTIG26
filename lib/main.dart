import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter26/blog/blog_screen.dart';
import 'package:flutter26/notes/notes_login_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'notes/notes_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: navigateToScreen(),
    );
  }

  Widget navigateToScreen(){
    if (FirebaseAuth.instance.currentUser == null) {
      return NotesLoginScreen();
    }
    else{
      return NotesScreen();
    }
  }

}


class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  // Layouts => Column , Row , Stack

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar Title"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print("Search");
            },
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {
              print('More');
            },
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          // Main => Vertical
          // Cross => Horizontal
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "This is BODY",
              style: TextStyle(
                fontSize: 44,
                color: Colors.green,
                fontWeight: FontWeight.w900,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('More');
              },
              child: const Text("More"),
            ),
            ElevatedButton.icon(
              onPressed: () {
                print('More');
              },
              label: const Text("More"),
              icon: const Icon(Icons.add),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  print('Accept');
                },
                label: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Accept",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                icon: const Icon(
                  Icons.check,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
