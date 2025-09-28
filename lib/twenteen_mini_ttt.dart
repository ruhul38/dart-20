import 'dart:io';
void main() => Game().play();
class Game {
  final List<String> b = List.filled(9, ' ');
  void draw() => print('${b[0]}|${b[1]}|${b[2]}\n-+-+-\n${b[3]}|${b[4]}|${b[5]}\n-+-+-\n${b[6]}|${b[7]}|${b[8]}\n');
  bool won(String p) {
    const lines = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8],
      [0, 3, 6], [1, 4, 7], [2, 5, 8],
      [0, 4, 8], [2, 4, 6]
    ];
    return lines.any((l) => l.every((i) => b[i] == p));
  }
  void play() {
    print('Tic-Tac-Toe: enter 0-8');
    draw();
    for (int i = 0; i < 9; i++) {
      final p = i.isEven ? 'X' : 'O';
      stdout.write('$p move: ');
      final m = int.parse(stdin.readLineSync()!);
      if (b[m] != ' ') { print('Illegal'); i--; continue; }
      b[m] = p; draw();
      if (won(p)) { print('$p wins!'); return; }
    }
    print('Draw');
  }
}
