
import '../../domain/usecases/save_to_local_storage.dart';

import '../../../../core/usecases/usecases.dart';
import '../../file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_handler_event.dart';
part 'file_handler_state.dart';
part 'file_handler_bloc.freezed.dart';

class FileHandlerBloc extends Bloc<FileHandlerEvent, FileHandlerState> {
  final PickFileFromLocalStorage _pickFileFromLocalStorage;
  final SaveToLocalStorage _saveToLocalStorage;

  FileHandlerBloc(this._pickFileFromLocalStorage, this._saveToLocalStorage)
      : super(FileHandlerState.initial()) {
    on<_PickFile>((event, emit) async {
      // loading state
      emit(state.copyWith(isLoading: true));

      // get data
      final failureOrSuccess = await _pickFileFromLocalStorage(NoParams());

      // handle data
      emit(
        failureOrSuccess.fold(
          (failure) => state.copyWith(isError: true, isLoading: false),
          (deviceFile) => state.copyWith(
            deviceFile: deviceFile,
            isFilePicked: true,
            isLoading: false,
          ),
        ),
      );
    });

    on<_SaveFile>((event, emit) async {
      final fileContent = event.bytes;
      final fileParam = SaveParams(fileContent);
      await _saveToLocalStorage(fileParam);
    });
  }
}
