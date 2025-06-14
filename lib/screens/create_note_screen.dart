import 'package:flutter/material.dart';

class CreateNoteScreen extends StatelessWidget {
  const CreateNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ESTE ES CREATE NOTE', style: TextStyle(fontSize: 30),),
      ),
    );
  }
}