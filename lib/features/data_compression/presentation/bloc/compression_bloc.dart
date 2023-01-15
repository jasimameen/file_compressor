import 'dart:developer';
import 'dart:io';

import '../../../../core/controllers/huffman/huffman.dart';
import 'package:file_picker/file_picker.dart';
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

      File outFile = await File('${dir!.path}/encoded_${inFile.name}.bin')
          .create(recursive: true);

      final data = File(inFile.path).readAsStringSync();

      toast.show('encoding started,,,');
      huffman.encode(data, outFile);
      toast.show('Encoding Finished');
    });

    on<_Decompress>((event, emit) async {
      final inFile = event.inFile;
      toast.show(inFile.path);

      // getKey
      final initialDir = await getExternalStorageDirectory();
      final keyPath = await FilePicker.platform
          .pickFiles(initialDirectory: initialDir?.path)
          .then((value) => value?.files.first)
          .then((file) => file!.path)
          .catchError((err) {
            log(err.toString());
          });

      final dir = await getExternalStorageDirectory();

      // regx to find the last extention in the file name
      final fileExtentionRegx = RegExp(r'(?<=\.)\w+$');

      // remove the last overriden file extention so file gets its original state
      final fileName = inFile.name.replaceAll(fileExtentionRegx, '');
      File outFile = await File('${dir!.path}/decoded_$fileName')
          .create(recursive: true);

      toast.show('encoding started,,,');
      final huffman = Huffman();
      huffman.decode(inFile.path, outFile, keyPath!);
      Toast.instance.show('decompression available sooner');
    });
  }
}
