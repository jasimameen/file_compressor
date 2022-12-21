import '../../../../core/error/exceptions.dart';
import '../models/device_file_model.dart';
import 'package:file_picker/file_picker.dart';

abstract class FileHandlerLocalDataSource {
  Future<DeviceFileModel> pickSingleFile();
}

class FileHandlerLocalDataSourceImpl implements FileHandlerLocalDataSource {
  final FilePicker _filePicker;

  FileHandlerLocalDataSourceImpl(this._filePicker);

  @override
  Future<DeviceFileModel> pickSingleFile() async {
    try {
      final result = await _filePicker.pickFiles();
      if (result == null) throw "User Aborted File Picking";

      final file = result.files.first;

      return DeviceFileModel.fromPlatformFile(file);
    } catch (err) {
      throw FilePickerException(err.toString());
    }
  }
}
