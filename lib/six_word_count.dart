void main() {
  const sentence = 'Hello world, hello Dart!';
  print('Sentence: "$sentence"');
  print('Word count:');
  print(wordCount(sentence));
}

Map<String, int> wordCount(String sentence) {
  final words = sentence
      .toLowerCase()
      .split(RegExp(r'[^a-z0-9]+'))
      .where((w) => w.isNotEmpty);
  final map = <String, int>{};
  for (final w in words) map[w] = (map[w] ?? 0) + 1;
  return map;
}
