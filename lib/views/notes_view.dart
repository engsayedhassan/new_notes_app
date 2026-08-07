import 'package:flutter/material.dart';
import 'package:new_notes_app/widgets/notes_view_body.dart';
import 'package:new_notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:new_notes_app/widgets/constant_key.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorPrimaryKey,
        child: Icon(
          Icons.add,
          size: 24,
          color: Colors.white,
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddNoteBottomSheet();
              });
        },
      ),
      body: NotesViewBody(),
    );
  }
}


