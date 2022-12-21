import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:file_compressor/core/usecases/usecases.dart';
import 'package:file_compressor/features/file_handler/domain/entities/device_file.dart';

import '../../../../core/error/failures.dart';
import '../repositories/files_handler_repository.dart';

class PickFileFromLocalStorage implements UseCase<DeviceFile, NoParams> {
  final FileHandlerRepository _repository;

  PickFileFromLocalStorage(this._repository);

  @override
  Future<Either<Failure, DeviceFile>> call(NoParams params) async {
    return await _repository.pickFileFromLocalStorage();
  }
}
