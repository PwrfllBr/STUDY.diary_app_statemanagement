import 'package:diary_app_statemanagement/providers/navigation_provider.dart';
import 'package:diary_app_statemanagement/screens/widgets/main_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class CreateNoteScreen extends StatelessWidget {
  const CreateNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navProvider =context.watch<NavigationProvider>();
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 34, 34),
      //transparent color for the app bar
      //to avoid the white background of the app bar
      // and to make the status bar change its color
      appBar: AppBar(
        toolbarHeight: 5,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 255, 254, 248),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('26 December 2024'),
                      Spacer(),
                      Text('Thursday')
                    ],
                  ),
                  Divider(color: Colors.black,),
                  TextField(
                    
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Write a note here...',
                      hintStyle: TextStyle(color: Colors.grey[700])
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: (){},
                child: Text('Publish'),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: MainAppbarWidget(index: navProvider.currentIndex,)
    );
  }
}