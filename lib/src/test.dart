void main() {
  Node tree = Node(
    'A',
    [
      Node('B', [
        Node('E'),
        Node('F'),
      ]),
      Node('C', [
        Node('G'),
        Node('H'),
      ]),
      Node('D'),
    ],
  );

  List<String> flattenedList = flattenTree(tree);
  print(flattenedList); // Output: [A, B, E, F, C, G, H, D]
}

List<String> flattenTree(Node node) {
  List<String> result = [];

  void traverse(Node currentNode) {
    result.add(currentNode.value);
    for (var child in currentNode.children) {
      traverse(child);
    }
  }

  traverse(node);
  return result;
}

class Node {
  final String value;
  final List<Node> children;

  Node(this.value, [this.children = const []]);
}
