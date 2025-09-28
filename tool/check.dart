import 'dart:io';
void main() {
  final r = Process.runSync('dart', ['test']);
  stdout.write(r.stdout);
  stderr.write(r.stderr);
  exitCode = r.exitCode;
}
