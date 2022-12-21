
import '../../../../core/error/exceptions.dart';
import '../datasources/file_handler_local_datasource.dart.dart';
import '../../domain/entities/device_file.dart';
import '../../../../core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'dart:io';

import '../../domain/repositories/files_handler_repository.dart';

class FileHandlerRepositoryImpl implements FileHandlerRepository {
  final FileHandlerLocalDataSource _localDataSource;

  FileHandlerRepositoryImpl(this._localDataSource);

  @override
  Future<Either<Failure, DeviceFile>> pickFileFromLocalStorage() async {
    try {
      final pickedFile = await _localDataSource.pickSingleFile();

      return Right(pickedFile);
    } on FilePickerException catch (err) {
      return Left(FilePickerFailure(err.message));
    } on Exception catch (err) {
      return Left(ClientFailure(err.toString()));
    }
  }

  @override
  Future<bool> saveFileToLocalStorage(File file) async {
    return false;
  }
}
