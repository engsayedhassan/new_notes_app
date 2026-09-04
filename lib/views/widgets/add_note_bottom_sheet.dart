import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_notes_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:new_notes_app/views/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        /// fixed height is problem ///
       // height: 400,
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNoteFailureState) {
              print("errorMessage : ${state.errorMessage}");
            }
            if (state is AddNoteSuccessState) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoadingState ? true : false,
              child: Padding(
                padding:  EdgeInsets.only(
                  right: 12,
                  left: 12,
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: const SingleChildScrollView(
                  child: AddNoteForm(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
