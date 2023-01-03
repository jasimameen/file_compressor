// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

import 'package:file_compressor/core/error/exceptions.dart';
import 'package:file_compressor/core/utils/toast_message.dart';

class Node extends Comparable<Node> {
  String char;
  int frequency;
  Node? left;
  Node? right;

  Node(this.char, this.frequency, [this.left, this.right]);

  bool isLeaf() {
    return left == null && right == null;
  }

  @override
  int compareTo(Node other) {
    return frequency - other.frequency;
  }

  @override
  String toString() => 'Node(char: $char, frequency: $frequency)';
}

class HuffmanEncode {
  final Map<String, int> _charFrequency = {};
  final Map<String, String> _charCodes = {};
  final String _inputString;

  // create a priority queue to hold the nodes of the Huffman tree
  final queue = PriorityQueue<Node>();

  HuffmanEncode(this._inputString);

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

  void _buildHuffmanTree() {
    // add all the characters from the input string to the priority queue
    _charFrequency.forEach((char, frequency) {
      queue.add(Node(char, frequency));
    });

    // keep building the tree until there is only one node left
    while (queue.length > 1) {
      // remove the two nodes with the lowest frequency
      Node left = queue.removeFirst();
      Node right = queue.removeFirst();

      // create a new node with the sum of the frequencies of the two nodes
      // and add the two nodes as its children
      int freq = left.frequency + right.frequency;
      Node parent = Node('', freq, left, right);
      queue.add(parent);
    }
  }

  void _generateCodes(Node node, String code) {
    log(node.toString());
    // base case: if the node is a leaf, store its code
    if (node.isLeaf()) {
      _charCodes[node.char] = code;
      return;
    }
    // recursively generate the codes for the left and right children
    _generateCodes(node.left!, '${code}0');
    _generateCodes(node.right!, '${code}1');
  }

  /// used as key while decoding
  String _generateHuffmanCodesAsJsonString() {
    Map<String, String> dict = {};
    log(_charCodes.toString());
    _charCodes.forEach((key, value) {
      log(key + value);
      dict[value] = key;
    });
    log(dict.toString());
    return jsonEncode(dict);
  }

  String _encode() {
    String encoded = '';

    // encode each character in the input string using its Huffman code
    for (int i = 0; i < _inputString.length; i++) {
      encoded += _charCodes[_inputString[i]] ?? '';
    }

    return encoded;
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
      String encoded = _encode();

      // create a File object to write the compressed data to
      IOSink sink = outFile.openWrite();

      // write the character frequency map and the encoded string to the file
      sink.add(encoded.codeUnits);

      // close sink
      await sink.close();

      // create a File to write the huffman codes
      File codeFile = await File('${outFile.parent.path}/key_dict.json')
          .create(recursive: true);
      final huffmanDict = _generateHuffmanCodesAsJsonString();
      codeFile.writeAsStringSync(huffmanDict);

      Toast.instance.show('Files saved at ${codeFile.parent.path}');
      log('Files saved at ${codeFile.parent.path}');

      log(codeFile.path);
      log(outFile.path);
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
