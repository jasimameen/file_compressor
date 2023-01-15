import 'dart:developer';
import 'dart:io';
import 'package:file_compressor/core/controllers/data_encoder.dart';
import 'package:file_compressor/core/controllers/huffman/decode.dart';
import 'package:file_compressor/core/controllers/huffman/encode.dart';

class Huffman implements DataEncoder {
  @override
  Future<bool> encode(String data, File outFile) async {
    final encoder = HuffmanEncode(data);
    await encoder.compress(outFile).onError(
      (error, stackTrace) {
        log(error.toString());
        log(stackTrace.toString());
      },
    );
    return false;
  }

  @override
  Future<bool> decode(
      String infilePath, File outFile, String dictionaryPath) async {
    final decoder = HuffmanDecode();
    await decoder.decompress(infilePath, outFile, dictionaryPath).onError(
      (error, stackTrace) {
        log(error.toString());
        log(stackTrace.toString());
      },
    );
    return false;
  }
}
