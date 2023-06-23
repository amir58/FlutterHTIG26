import 'package:flutter/material.dart';

class AddNewNoteScreen extends StatelessWidget {
  AddNewNoteScreen({Key? key}) : super(key: key);

  final noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add new note"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextFormField(
              controller: noteController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Note",
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                onPressed: () {
                  String note = noteController.text;
                  Navigator.pop(context, note);
                },
                child: const Text("Add"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
