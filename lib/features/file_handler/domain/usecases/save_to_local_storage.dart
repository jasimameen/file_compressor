// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:file_compressor/core/usecases/usecases.dart';
import 'package:file_compressor/features/file_handler/domain/repositories/files_handler_repository.dart';

import '../../../../core/error/failures.dart';

class SaveToLocalStorage implements UseCase<bool, SaveParams> {
  final FileHandlerRepository _repository;
  SaveToLocalStorage(this._repository);

  @override
  Future<Either<Failure, bool>> call(SaveParams params) async {
    return await _repository.saveFileToLocalStorage(params.file);
  }
}

class SaveParams extends Equatable {
  final File file;

  const SaveParams(this.file);

  @override
  List<Object?> get props => [file];
}
