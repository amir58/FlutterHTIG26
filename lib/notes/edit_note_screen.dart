import 'package:flutter/material.dart';

class EditNoteScreen extends StatefulWidget {
  EditNoteScreen({Key? key, required this.note}) : super(key: key);

  final String note;

  @override
  State<EditNoteScreen> createState() => _EditNoteScreenState();
}

class _EditNoteScreenState extends State<EditNoteScreen> {
  final noteController = TextEditingController();

  @override
  void initState() {
    super.initState();
    noteController.text = widget.note;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit note"),
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
                child: const Text("Update"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
