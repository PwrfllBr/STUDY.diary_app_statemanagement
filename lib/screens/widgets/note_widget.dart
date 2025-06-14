import 'package:diary_app_statemanagement/models/note_model.dart';
import 'package:diary_app_statemanagement/providers/note_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NoteWidget extends StatelessWidget {

  const NoteWidget({
    super.key,
    required this.note
  });

  final Note note;

  @override
  Widget build(BuildContext context) {
    final noteProvider = context.read<NoteProvider>();
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 238, 235, 221),
          borderRadius: BorderRadius.circular(10),
          // Efecto de sombra generado con un bucle
          // que crea múltiples sombras con diferentes offsets y blur radius
          boxShadow: List<BoxShadow>.generate(
            3,
            (index) => BoxShadow(
              color: const Color.fromARGB(66, 0, 0, 0),
              // Cada sombra tiene un offset y un blur radius que aumenta con el índice
              offset: Offset(0, 2 * (index + 1)),
              blurRadius: 2 * (index + 1),
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(note.date),
                Spacer(),
                Text(note.days),
                IconButton(onPressed: () => {noteProvider.deleteNote(note.id)}, icon: Icon(Icons.delete))
              ],
            ),
          Divider(color: Colors.black,),
          Text(note.text,
          textAlign: TextAlign.justify,
          maxLines: 2,
          overflow: TextOverflow.ellipsis)
          ],
        ),
      );
  }
}