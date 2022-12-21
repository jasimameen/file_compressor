
import 'package:dartz/dartz.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/device_file.dart';

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
