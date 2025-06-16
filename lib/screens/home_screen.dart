import 'package:diary_app_statemanagement/providers/navigation_provider.dart';
import 'package:diary_app_statemanagement/providers/note_provider.dart';
import 'package:diary_app_statemanagement/screens/widgets/main_appbar_widget.dart';
import 'package:diary_app_statemanagement/screens/widgets/note_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final noteProvider = context.watch<NoteProvider>();
    final navProvider = context.watch<NavigationProvider>();
    final notes = noteProvider.notes;

    return Scaffold(
      appBar: AppBar(
        title: Text('Note App'),
        centerTitle: false,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.person_2_outlined)),
        ],
      ),
      body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: notes.isEmpty? Text('No notes found :(')
       : ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) => NoteWidget(note: notes[index]), 
        )
      ),
      bottomNavigationBar: MainAppbarWidget(index: navProvider.currentIndex,)
    );
  }
}