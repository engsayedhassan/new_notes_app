import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_notes_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:new_notes_app/models/note_model.dart';
import 'package:new_notes_app/views/widgets/custom_text_button.dart';
import 'package:new_notes_app/views/widgets/custom_text_form_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}



class _AddNoteFormState extends State<AddNoteForm> {

final GlobalKey<FormState> formKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextFormField(
            hint: "Title",
            maxLines: 1,
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hint: "subTitle",
            maxLines: 5,
            onSaved: (value) {
               subTitle = value;
            },
          ),
          SizedBox(
            height: 70,
          ),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomTextButton(
                      text: "Add",
                      isLoading: state is AddNoteLoadingState ? true : false,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
          
                          NoteModel noteModel = NoteModel(
                            title: title!,
                            subTitle: subTitle!,
                            date: DateTime.now().toString(),
                            color: Colors.amber.value,
                          );
                          BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
                        } else {
                          autovalidateMode = AutovalidateMode.always;
                          setState(() {});
                        }
                      },
                    );
            },
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
