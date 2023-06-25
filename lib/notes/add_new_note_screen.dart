import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddNewNoteScreen extends StatefulWidget {
  const AddNewNoteScreen({Key? key}) : super(key: key);

  @override
  State<AddNewNoteScreen> createState() => _AddNewNoteScreenState();
}

class _AddNewNoteScreenState extends State<AddNewNoteScreen> {
  final noteController = TextEditingController();

  final firestore = FirebaseFirestore.instance;

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
                onPressed: () => addNote(),
                child: const Text("Add"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  addNote() {
    String note = noteController.text;

    // Map<String, dynamic> => key : value
    // "id" : 1
    // "note" : "Wake up"
    // "favourite" : false

    String currentMillis = DateTime.now().millisecondsSinceEpoch.toString();

    Map<String, dynamic> data = {
      "id": currentMillis,
      "note": note,
    };

    firestore.collection("notes").doc(data['id']).set(data);

    Navigator.pop(context);
  }
}
