import 'package:flutter/material.dart';
import 'package:to_do_app/src/common_widgets/todo_model.dart';
import 'package:to_do_app/src/constants/colors.dart';


class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  // bool isTrue = true;
  TextEditingController titleController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    titleController.dispose();
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: splashScreenColor,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios_rounded)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 8, left: 10, right: 10),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: 'Note Title'),
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              controller: titleController,
            ),
            TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: 'your note'),
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              controller: messageController,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: splashScreenColor,
        onPressed: () {
          Navigator.pop(
              context,
              TodoModel(
                  title: titleController.text,
                  message: messageController.text));
        },
        label: const Text(
          'Save Note',
        ),
      ),
    );
  }
}
