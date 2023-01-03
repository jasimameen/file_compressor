// throws wehn the file picker fails
class FilePickerException implements Exception {
  final String message;

  const FilePickerException(this.message);

  @override
  String toString() => message;
}

///thows when file saving fails
class FileSaveException implements Exception {
  final String message;

  const FileSaveException(this.message);

  @override
  String toString() => message;

}


/// throws when data compression fails
class DataCompressionException implements Exception {
  final String message;

  const DataCompressionException(this.message);

  @override
  String toString() => message;

}
