import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:file_compressor/core/error/failures.dart';
import 'package:file_compressor/features/file_picker/domain/entities/device_file.dart';

abstract class FileHandlerRepository {
  Future<Either<Failure, DeviceFile>> pickFileFromDevice();
  Future<bool> saveFileToDevice(File file);
}
