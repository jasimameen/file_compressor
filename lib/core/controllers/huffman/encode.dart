// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'huffman_node.dart';
import 'package:file_compressor/core/error/exceptions.dart';
import 'package:file_compressor/core/utils/toast_message.dart';

class HuffmanEncode {
  final Map<String, int> _charFrequency = {};
  final Map<String, String> _charCodes = {};
  final String _inputString;

  // create a priority queue to hold the nodes of the Huffman tree
  final queue = PriorityQueue<HuffmanNode>();

  HuffmanEncode(this._inputString);

  /// store the count of characters and store inside a map [_charFrequency]
  void _buildCharFrequency() {
    // count frequency of each character in the input string
    for (int i = 0; i < _inputString.length; i++) {
      String char = _inputString[i];
      if (!_charFrequency.containsKey(char)) {
        _charFrequency[char] = 0;
      }
      _charFrequency[char] = _charFrequency[char]! + 1;
    }
  }

  /// build a huffman tree using [_charFrequency] map and store inside [queue]
  void _buildHuffmanTree() {
    // add all the characters from the input string to the priority queue
    _charFrequency.forEach((char, frequency) {
      queue.add(HuffmanNode(char, frequency));
    });

    // keep building the tree until there is only one node left
    while (queue.length > 1) {
      // remove the two nodes with the lowest frequency
      HuffmanNode left = queue.removeFirst();
      HuffmanNode right = queue.removeFirst();

      // create a new node with the sum of the frequencies of the two nodes
      // and add the two nodes as its children
      int freq = left.frequency + right.frequency;
      HuffmanNode parent = HuffmanNode('', freq, left, right);
      queue.add(parent);
    }
  }

  /// generate a codeTree using the [_charFrequency] and create new [_charCodes] map
  void _generateCodes(HuffmanNode node, String code) {
    // base case: if the node is a leaf, store its code
    if (node.isLeaf()) {
      _charCodes[node.char] = code;
      return;
    }
    // recursively generate the codes for the left and right children
    _generateCodes(node.left!, '${code}0');
    _generateCodes(node.right!, '${code}1');
  }

  /// encode the inputString using the [_charCodes] dictionary
  Future<void> _encode(File outFile) async {
    // StringBuffer encoded = StringBuffer();
    final sink = outFile.openWrite();

    // encode each character in the input string using its Huffman code
    List<int> tmpBytes = [];
    for (var char in _inputString.split('')) {
      int bit = int.parse(_charCodes[char] ?? '');
      tmpBytes.add(bit);
      if (tmpBytes.length > 256) {
        sink.add(tmpBytes);
        tmpBytes.clear();
      }
    }
    sink.add(tmpBytes);

    await sink.close();

    // return encoded.toString();
  }

  /// build a json  map from [_charCodes] contains {"code" : "char"}
  String _getDecodeKey() {
    final decodeKeys = <String, String>{};
    _charCodes.forEach((char, code) => decodeKeys[code] = char);
    return json.encode(decodeKeys);
  }

  Future<void> _saveDecodeKeyAt(String path) async {
    // create a File to write the huffman codes
    File decodeKeyFile = await File(path).create(recursive: true);

    decodeKeyFile.writeAsStringSync(_getDecodeKey());

    // show results in app and logger
    Toast.instance.show('Files saved at ${decodeKeyFile.parent.path}');
    log('Files saved at ${decodeKeyFile.parent.path}');
  }

  Future<void> compress(File outFile) async {
    // build the character frequency map and the Huffman tree
    try {
      _buildCharFrequency();
      _buildHuffmanTree();

      // generate the Huffman codes for each character
      final root = queue.first;
      _generateCodes(root, '');

      // encode the input string using the Huffman codes
      // String encoded = 
      await _encode(outFile);
      // log(encoded);

      // create a File object to write the compressed data to
      // IOSink sink = outFile.openWrite();

      // write the character frequency map and the encoded string to the file
      // sink.add(encoded.codeUnits);

      // close sink
      // await sink.close();

      // save decode key
      await _saveDecodeKeyAt('${outFile.parent.path}/key_dict.hdkey');
    } on Exception catch (err) {
      Toast.instance.show(err.toString());
      FlutterError.reportError(FlutterErrorDetails(
          exception: err,
          library: 'Huffman Encode',
          context: ErrorSummary(err.toString())));
      throw DataCompressionException(err.toString());
    }
  }
}
