import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:file_compressor/core/error/failures.dart';
import 'package:file_compressor/features/file_handler/domain/entities/device_file.dart';

abstract class FileHandlerRepository {
  Future<Either<Failure, DeviceFile>> pickFileFromLocalStorage();
  Future<bool> saveFileToLocalStorage(File file);
}
