import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart' as path;

import '../../../../core/error/exceptions.dart';
import '../models/device_file_model.dart';

abstract class FileHandlerLocalDataSource {
  Future<DeviceFileModel> pickSingleFile();
  Future<bool> saveFile(String fileName, List<int> bytes);
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

      log(file.path??'go hell babee!!!');

      return DeviceFileModel.fromPlatformFile(file);
    } catch (err) {
      throw FilePickerException(err.toString());
    }
  }

  @override
  Future<bool> saveFile(String fileName, List<int> bytes) async {
    try {
      final dir = await path.getExternalStorageDirectory(); // only on Android

      if (dir == null) throw const FileSaveException('Not an Android Platform');

      // create folder
      final folder = await Directory("${dir.path}/Compressed Files")
          .create(recursive: true);

      // create a file
      final outFile = File('${folder.path}/$fileName');

      // write content into the file
      await outFile.writeAsBytes(bytes);

      return true;
    } catch (e) {
      log(e.toString());
      throw FileSaveException(e.toString());
    }
  }
}
