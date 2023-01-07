import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:file_compressor/core/utils/toast_message.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

class HuffmanDecode {
  Future<void> decompress(
      String infilePath, String dictionaryPath, File outFile) async {
    try {
      final encodedString = File(infilePath).readAsStringSync();
      final Map<String, dynamic> decodeKey =
          json.decode(File(dictionaryPath).readAsStringSync());

      IOSink sink = outFile.openWrite();
      String temp = '';

      for (var ch in encodedString.split('')) {
        temp += ch;
        if (!decodeKey.containsKey(temp)) continue;

        log(temp);
        sink.write(decodeKey[temp]);
        temp = '';
      }
      log('done hehe');
    } catch (err) {
      Toast.instance.show(err.toString());
      FlutterError.reportError(FlutterErrorDetails(
        exception: err,
        library: "Compressor",
        context: ErrorDescription("while decoding Huffman"),
      ));
    }
  }
}
