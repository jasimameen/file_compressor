import 'package:file_compressor/core/usecases/usecases.dart';
import 'package:file_compressor/core/utils/toast_message.dart';
import 'package:file_compressor/features/file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'datacompress_event.dart';
part 'datacompress_state.dart';
part 'datacompress_bloc.freezed.dart';

class DatacompressBloc extends Bloc<DatacompressEvent, DatacompressState> {
  final PickFileFromDevice _pickFileFromDevice;
  DatacompressBloc(this._pickFileFromDevice) : super(const _Initial()) {
    on<_Started>((event, emit) async {
      final res = await _pickFileFromDevice(NoParams());

      res.fold(
        (l) {
          Toast().showtoast(l.message.toString());
        },
        (r) {
          Toast().showtoast(r.toString());
        },
      );
    });
  }
}
