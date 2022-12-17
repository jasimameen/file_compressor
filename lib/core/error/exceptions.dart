// throws wehn the file picker fails
class FilePickerException implements Exception {
  final String message;

  FilePickerException(this.message);

  @override
  String toString() => message;
}