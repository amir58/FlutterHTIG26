import 'package:flutter/material.dart';
import 'package:flutter26/notes/add_new_note_screen.dart';
import 'package:flutter26/notes/edit_note_screen.dart';

class NotesScreen extends StatefulWidget {
  NotesScreen({Key? key}) : super(key: key);

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  final List<String> notes = []; // List of Strings

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notes")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateToAddNewNoteScreen();
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return noteItem(index);
        },
      ),
    );
  }

  Widget noteItem(int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(25),
      ),
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            child: Text(
              notes[index],
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              navigateToEditNoteScreen(index);
            },
            icon: const Icon(
              Icons.edit,
              color: Colors.green,
            ),
          ),
          IconButton(
            onPressed: () {
              notes.removeAt(index);
              setState(() {});
            },
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  void navigateToAddNewNoteScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => AddNewNoteScreen(),
      ),
    ).then((value) {
      if (value == null) {
        return;
      }
      notes.add(value);
      setState(() {});
    });
  }

  void navigateToEditNoteScreen(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditNoteScreen(
          note: notes[index],
        ),
      ),
    ).then((value) {
      print(value);
      if (value == null) return;

      notes[index] = value;
      setState(() {});
    });
  }
}
