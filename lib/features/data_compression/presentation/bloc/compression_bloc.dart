import 'dart:io';

import 'package:file_compressor/core/controllers/huffman.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../core/utils/toast_message.dart';
import '../../../file_handler/file_picker.dart';

part 'compression_bloc.freezed.dart';
part 'compression_event.dart';
part 'compression_state.dart';

class CompressionBloc extends Bloc<CompressionEvent, CompressionState> {
  final PickFileFromLocalStorage _pickFileFromDevice;

  final toast = Toast.instance;
  CompressionBloc(this._pickFileFromDevice) : super(const _Initial()) {
    on<_Compress>((event, emit) async {
      final inFile = event.inFile;
      toast.show(inFile.path);

      final huffman = Huffman();
      final dir = await getExternalStorageDirectory();

      

      File outFile =await File('${dir!.path}/encoded_${inFile.name}').create(recursive: true);

      final data = File(inFile.path).readAsStringSync();

      toast.show('encoding started,,,');
      huffman.encode(data, outFile);
    });

    on<_Decompress>((event, emit) async {
      final inFile = event.inFile;
      toast.show(inFile.path);

      final huffman = Huffman();
      final dir = await getExternalStorageDirectory();

      

      File outFile =await File('${dir!.path}/decoded_${inFile.name}').create(recursive: true);

      final data = File(inFile.path).readAsStringSync();

      toast.show('encoding started,,,');
      huffman.decode(data, outFile);
      Toast.instance.show('decompression available sooner');
    });
  }
}
