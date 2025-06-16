import 'package:diary_app_statemanagement/providers/navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainAppbarWidget extends StatelessWidget {
  const MainAppbarWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: BottomNavigationBar(
        onTap: (value) {
          // Update the current index in the navigation provider
          context.read<NavigationProvider>().setCurrentIndex(value);
          
          // Navigate to the corresponding screen based on the index
          if (value == 0) {
            Navigator.pushNamed(context, 'homeScreen');
          } else if (value == 1) {
            Navigator.pushNamed(context, 'createNoteScreen');
          }
        },
        currentIndex: index,
        unselectedItemColor: Colors.black,
        selectedItemColor: const Color.fromARGB(255, 236, 130, 59),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.note),
            label: "Notes",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_add_outlined),
            label: "New Note",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Browse",
          ),
      ],),
    );
  }
}