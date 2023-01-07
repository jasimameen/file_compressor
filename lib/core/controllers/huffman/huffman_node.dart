// ignore_for_file: public_member_api_docs, sort_constructors_first
///
class HuffmanNode extends Comparable<HuffmanNode> {
  String char;
  int frequency;
  HuffmanNode? left;
  HuffmanNode? right;

  HuffmanNode(this.char, this.frequency, [this.left, this.right]);

  bool isLeaf() {
    return left == null && right == null;
  }

  @override
  int compareTo(HuffmanNode other) {
    return frequency - other.frequency;
  }

  @override
  String toString() => 'Node(char: $char, frequency: $frequency)';
}
