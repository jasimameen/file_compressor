import 'package:file_compressor/core/usecases/usecases.dart';
import 'package:file_compressor/features/file_handler/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/device_file.dart';
import '../../domain/repositories/files_handler_repository.dart';

part 'file_handler_event.dart';
part 'file_handler_state.dart';
part 'file_handler_bloc.freezed.dart';

class FileHandlerBloc extends Bloc<FileHandlerEvent, FileHandlerState> {
  final PickFileFromLocalStorage _pickFileFromLocalStorage;
  FileHandlerBloc(this._pickFileFromLocalStorage) : super(FileHandlerState.initial()) {
    on<_PickFile>((event, emit) async {
      // loading state
      emit(state.copyWith(isLoading: true));

      // get data
      final failureOrSuccess = await _pickFileFromLocalStorage(NoParams());

      // handle data
      failureOrSuccess.fold(
        (failure) => emit(state.copyWith(isError: true, isLoading: false)),
        (deviceFile) => emit(
          state.copyWith(
            deviceFile: deviceFile,
            isFilePicked: true,
            isLoading: false,
          ),
        ),
      );
    });
  }
}
