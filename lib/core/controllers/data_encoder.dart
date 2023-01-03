import 'dart:io';


/// interface for encode decode data
abstract class DataEncoder {
  /// encode data
  Future<bool> encode(String data, File outFile);

  /// decompress alredy encoded data
  Future<bool> decode(String data, File outFile);
}
