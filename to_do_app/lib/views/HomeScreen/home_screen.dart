import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/utils/colors.dart';
import 'package:to_do_app/utils/config.dart';
import 'package:lottie/lottie.dart';
import 'package:to_do_app/views/AddNotes/add_notes.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: backgroundColor ,
      appBar: AppBar(
        backgroundColor: splashScreenColor,
        title: const Text(appBar),
        centerTitle: true,
      ),
      body: Center(
        child: Lottie.asset('assets/json/no_data.json', height: 250, ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: splashScreenColor,
        onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder:(context)=>const AddNote()));
      },
      child: const Icon(Icons.add) ,
      ) 
      ,
      
    );
  }
}