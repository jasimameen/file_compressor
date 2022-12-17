import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:file_compressor/core/usecases/usecases.dart';
import 'package:file_compressor/features/file_picker/domain/entities/device_file.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../repositories/files_handler_repository.dart';

class PickFileFromDevice implements UseCase<DeviceFile, NoParams> {
  final FileHandlerRepository _repository;

  PickFileFromDevice(this._repository);

  @override
  Future<Either<Failure, DeviceFile>> call(NoParams params) async {
    return await _repository.pickFileFromDevice();
  }
}
