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

      return DeviceFileModel.fromPlatformFile(file);
    } catch (err) {
      throw FilePickerException(err.toString());
    }
  }

  @override
  Future<bool> saveFile(String fileName, List<int> bytes) async {
    try {
      final   dir = await path.getExternalStorageDirectory(); // only on Android

      // create folder
      final folder =
          await Directory("${dir!.path}/Compressed Files")
              .create(recursive: true);

      File dummyFile = File('${folder.path}/$fileName');

      log(dummyFile.path);

      // write some text inside it
      await dummyFile.writeAsBytes(bytes);

      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }
}
