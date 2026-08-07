import 'package:flutter/material.dart';
import 'package:new_notes_app/widgets/custom_app_bar.dart';
import 'package:new_notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),

      child: Column(
         children: [
           SizedBox(height: 64,),
           CustomAppBar(title: "Edit Note",icon:Icons.check,),
           SizedBox(height: 24,),

           CustomTextField(text: "title", maxLines: 1),

           SizedBox(height: 16,),
           CustomTextField(text: "content", maxLines: 5),
         ],
       
      ),
    );
  }
}
