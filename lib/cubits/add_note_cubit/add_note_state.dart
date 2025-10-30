class AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoaded extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String errorMessage;
  AddNoteFailure(this.errorMessage);
}
