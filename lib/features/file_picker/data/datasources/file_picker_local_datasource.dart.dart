import 'package:file_compressor/core/error/exceptions.dart';
import 'package:file_compressor/features/file_picker/data/models/device_file_model.dart';
import 'package:file_picker/file_picker.dart';

abstract class FilePickerLocalDataSource {
  Future<DeviceFileModel> pickSingleFile();
}

class FilePickerLocalDataSourceImpl implements FilePickerLocalDataSource {
  final FilePicker _filePicker;

  FilePickerLocalDataSourceImpl(this._filePicker);

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
