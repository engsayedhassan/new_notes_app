import 'package:flutter/material.dart';
import 'package:new_notes_app/widgets/custom_text_button.dart';
import 'package:new_notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 400,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              CustomTextField(text: "Title", maxLines: 1),
              SizedBox(
                height: 16,
              ),
              CustomTextField(text: "Content", maxLines: 5),
              SizedBox(
                height: 90,
              ),
              CustomTextButton(text: "Add"),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
