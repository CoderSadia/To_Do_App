import 'package:flutter/material.dart';
import 'package:to_do_app/utils/colors.dart';
import 'package:to_do_app/views/HomeScreen/home_screen.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
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
      body: const Padding(
        padding: EdgeInsets.only(top: 10, bottom: 8, left: 10, right: 10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Note Titile'),
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'your note'),
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: splashScreenColor,
          onPressed: () {
             Navigator.of(context).push(MaterialPageRoute(builder:(context)=>const HomeScreen()));
          }, 
          label:  const Text('Save Note', ),
          ),
    );
  }
}
