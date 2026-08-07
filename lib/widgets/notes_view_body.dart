import 'package:flutter/material.dart';
import 'package:new_notes_app/views/notes_list_view.dart';
import 'package:new_notes_app/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 64, bottom: 24),
            child: CustomAppBar(icon: Icons.search,title: "Notes",),
          ),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}


