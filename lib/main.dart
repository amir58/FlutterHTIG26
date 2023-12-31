import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const LoginScreen());
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
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
            SizedBox(
              width: double.infinity,
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
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
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
