void main() async {
  await tick();
}

Future<void> tick() async {
  for (int i = 0; i < 5; i++) {
    await Future.delayed(const Duration(seconds: 1));
    print('tick');
  }
}
