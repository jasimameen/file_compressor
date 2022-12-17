import 'package:file_compressor/features/file_picker/domain/entities/device_file.dart';
import 'package:file_compressor/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'dart:io';

import 'package:file_compressor/features/file_picker/domain/repositories/files_handler_repository.dart';

class FileHandlerRepositoryImpl implements FileHandlerRepository {
  @override
  Future<Either<Failure, DeviceFile>> pickFileFromDevice() async {
        
    throw UnimplementedError();
  }

  @override
  Future<bool> saveFileToDevice(File file) async {
    return false;
  }
}
