void main() {
  print('nullToZero(5) is ${nullToZero(5)}');
  print('nullToZero(null) is ${nullToZero(null)}');
}

int nullToZero(int? v) => v ?? 0;
