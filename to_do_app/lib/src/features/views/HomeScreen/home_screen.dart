import 'package:flutter/material.dart';
import 'package:to_do_app/src/common_widgets/todo_model.dart';
import 'package:to_do_app/src/constants/colors.dart';
import 'package:to_do_app/src/constants/config.dart';
import 'package:lottie/lottie.dart';
// import '../../../common_widgets/box_widget.dart';
import '../../../common_widgets/custom_card.dart';
import '../AddNotes/add_notes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<TodoModel> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: splashScreenColor,
        title: const Text(appBar),
        centerTitle: true,
      ),
      body: todoList.isEmpty
          ? Center(
              child: Lottie.asset(
              'assets/json/no_data.json',
              height: 250,
            ))
          : Padding(
              padding: const EdgeInsets.all(8),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 6),
                    child: customCard(
                        title: todoList[index].title,
                        message: todoList[index].message,
                        color: Colors.transparent),
                  );
                },
                itemCount: todoList.length,
              ),
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: splashScreenColor,
        onPressed: () async {
          var navigator = await Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const AddNote()));
          if (navigator != null) {
            setState(() {
              todoList.add(navigator);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
