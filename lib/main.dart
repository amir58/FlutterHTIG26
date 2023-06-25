import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter26/blog/blog_screen.dart';

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
      home: NotesScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 20),
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.email,
                ),
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Password"),
            ),
            const SizedBox(height: 15),
            const Text("Forget your password ?"),
            const SizedBox(height: 15),
            Row(
              // Main  => Horizontal
              // Cross => Vertical
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 2 / 3
                Expanded(
                  flex: 2,
                  child: MaterialButton(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                // 1 / 3
                Expanded(
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello "),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
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
