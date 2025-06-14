import 'package:flutter/material.dart';

class MainAppbarWidget extends StatelessWidget {
  const MainAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: BottomNavigationBar(
        currentIndex: 0,
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