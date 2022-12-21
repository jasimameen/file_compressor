import '../../../../core/usecases/usecases.dart';
import '../../../file_handler/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'compression_event.dart';
part 'compression_state.dart';
part 'compression_bloc.freezed.dart';

class CompressionBloc extends Bloc<CompressionEvent, CompressionState> {
  final PickFileFromLocalStorage _pickFileFromDevice;
  CompressionBloc(this._pickFileFromDevice) : super(const _Initial()) {
    on<_Compress>((event, emit) async {
      // loading state
      emit(const CompressionState.compressing());

      // get data
      final failureOrSuccess = await _pickFileFromDevice(NoParams());

      // handle data
      emit(
        failureOrSuccess.fold(
          (failure) => const CompressionState.error(),
          (deviceFile) => CompressionState.success(deviceFile),
        ),
      );
    });

    on<_Decompress>((event, emit) async {
      // loading state
      emit(const CompressionState.decompressing());

      // get data
      final failureOrSuccess = await _pickFileFromDevice(NoParams());

      // handle data
      emit(
        failureOrSuccess.fold(
          (failure) => const CompressionState.error(),
          (deviceFile) => CompressionState.success(deviceFile),
        ),
      );
    });
  }
}
