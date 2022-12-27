import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/device_file.dart';

abstract class FileHandlerRepository {
  Future<Either<Failure, DeviceFile>> pickFileFromLocalStorage();
  Future<Either<Failure, bool>> saveFileToLocalStorage(File file);
}
