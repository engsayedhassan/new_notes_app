part of 'add_notes_cubit.dart';

sealed class AddNotesState {}

final class AddNotesInitial extends AddNotesState {}

final class AddNoteLoadingState extends AddNotesState {}

final class AddNoteSuccessState extends AddNotesState {}

final class AddNoteFailureState extends AddNotesState {
  final String errorMessage;

  AddNoteFailureState( this.errorMessage);
}
