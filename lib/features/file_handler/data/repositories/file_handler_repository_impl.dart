
import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/device_file.dart';
import '../../domain/repositories/files_handler_repository.dart';
import '../datasources/file_handler_local_datasource.dart.dart';

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
  Future<Either<Failure, bool>> saveFileToLocalStorage(List<int> bytes) async {
    try {
      final res = await _localDataSource.saveFile('dummy.txt', bytes);

      return right(res);
    } on Exception catch (err) {
      return Left(ClientFailure(err.toString()));
    }
  }
}
