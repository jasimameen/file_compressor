import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import '../../utils/toast_message.dart';
import 'package:flutter/foundation.dart';

class HuffmanDecode {
  Future<void> decompress(
      String infilePath, File outFile, String dictionaryPath) async {
    try {
      final Map<String, dynamic> decodeKey =
          json.decode(File(dictionaryPath).readAsStringSync());
      final readFile = await File(infilePath).open();

      IOSink sink = outFile.openWrite();
      String temp = '';
      // Read the file in chunks
      const chunkSize = 1024;
      var chunk = Uint8List(chunkSize);
      while (await readFile.readInto(chunk) > 0) {
        for (var byte in chunk) {
          // Print each bit in the byte
          for (var i = 0; i < 8; i++) {
            temp += ((byte >> i) & 1).toString();
            if (!decodeKey.containsKey(temp)) continue;

            log(temp);
            sink.write(decodeKey[temp]);
            temp = '';
          }
        }
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
