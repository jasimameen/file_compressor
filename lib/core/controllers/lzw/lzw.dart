import 'dart:io';

import '../data_encoder.dart';
import 'decode.dart';
import 'encode.dart';
import 'package:flutter/foundation.dart';

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
