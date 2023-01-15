import 'dart:io';

import 'package:flutter/services.dart';

class LZWEncode {
  Future<bool> encode(String data, File outFile) async {
    // Initialize variables
    var dict = {};
    var dataList = data.split('');
    var currString = dataList[0];
    var result = <int>[];
    var nextCode = 256;

    // Build dictionary
    for (var i = 0; i < 256; i++) {
      dict[String.fromCharCode(i)] = i;
    }

    // Encode data
    for (var i = 1; i < dataList.length; i++) {
      var currChar = dataList[i];
      var tempString = currString + currChar;
      if (dict.containsKey(tempString)) {
        currString = tempString;
      } else {
        result.add(dict[currString]);
        dict[tempString] = nextCode;
        nextCode++;
        currString = currChar;
      }
    }
    result.add(dict[currString]);

    // Write to file
    var sink = outFile.openWrite();
    sink.add(Uint8List.fromList(result));
    await sink.flush();
    sink.close();
    return true;
  }
}
