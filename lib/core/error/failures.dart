abstract class Failure {
  final String message;

  Failure(this.message);
}

class ClientFailure extends Failure {
  ClientFailure(String message) : super(message);
}

class FilePickerFailure extends Failure {
  FilePickerFailure(super.message);
}