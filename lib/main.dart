import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:new_notes_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:new_notes_app/models/note_model.dart';
import 'package:new_notes_app/simple_bloc_observer.dart';
import 'package:new_notes_app/views/notes_view.dart';
import 'package:new_notes_app/views/widgets/constant_key.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  await Hive.initFlutter();

   Bloc.observer =  SimpleBlocObserver();

  // Register NoteModel Adapter
  Hive.registerAdapter(NoteModelAdapter());

  // Open Notes Box
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: NotesView(),
    );
  }
}
