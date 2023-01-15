import 'dart:io';

import 'package:file_compressor/core/controllers/data_encoder.dart';
import 'package:file_compressor/core/controllers/lzw/decode.dart';
import 'package:file_compressor/core/controllers/lzw/encode.dart';
import 'package:file_compressor/core/utils/toast_message.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

class LZW implements DataEncoder {
  final LZWEncode _lzwEncode;
  final LZWDecode _lzwDecode;

  const LZW(this._lzwEncode, this._lzwDecode);

  @override
  Future<bool> encode(String data, File outFile) async {
    try {
      return _lzwEncode.encode(data, outFile);
    } catch (err) {
      FlutterError.reportError(
        FlutterErrorDetails(exception: err, library: 'LZW Encode'),
      );

      return false;
    }
  }

  @override
  Future<bool> decode(String infilePath, File outFile, _) async {
    try {
      return _lzwDecode.decode(infilePath, outFile);
    } catch (err) {
      FlutterError.reportError(
        FlutterErrorDetails(exception: err, library: 'LZW Decode'),
      );

      return false;
    }
  }
}
