import '../../../../core/utils/toast_message.dart';

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
      Toast.instance.show('Compresion available sooner');
    });

    on<_Decompress>((event, emit) async {
      Toast.instance.show('decompression available sooner');
    });
  }
}
