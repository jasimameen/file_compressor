import 'dart:io';

import 'package:flutter/services.dart';

class LZWDecode {
  Future<bool> decode(String inFilePath, File outFile) async {
    var dict = {};
    var prevCode = 0;
    var currCode = 0;
    var currString = '';
    var result = '';

    // Build dictionary
    for (var i = 0; i < 256; i++) {
      dict[i] = String.fromCharCode(i);
    }

    // Read from file
    var bytes = await File(inFilePath).readAsBytes();
    var data = Uint8List.fromList(bytes);
    var dataList = data.toList();

    // Decode data
    prevCode = dataList[0];
    result += dict[prevCode];
    for (var i = 1; i < dataList.length; i++) {
      currCode = dataList[i];
      if (dict.containsKey(currCode)) {
        currString = dict[currCode];
      } else {
        currString = dict[prevCode] + dict[prevCode][0];
      }
      result += currString;
      dict[dict.length] = dict[prevCode] + currString[0];
      prevCode = currCode;
    }

    // Write to file
    var sink = outFile.openWrite();
    sink.write(result);
    await sink.flush();
    sink.close();
    return true;
  }
}
