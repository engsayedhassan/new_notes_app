import 'package:flutter/material.dart';
import 'package:new_notes_app/views/widgets/notes_view_body.dart';
import 'package:new_notes_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:new_notes_app/views/widgets/constant_key.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        child: Icon(
          Icons.add,
          size: 24,
          color: Colors.white,
        ),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
              ),
              builder: (context) {
                return AddNoteBottomSheet();
              });
        },
      ),
      body: NotesViewBody(),
    );
  }
}


