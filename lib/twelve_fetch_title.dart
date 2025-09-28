import 'package:http/http.dart' as http;

void main() async {
  const url = 'https://jsonplaceholder.typicode.com/todos/1';
  print('Fetching title from: $url');
  final title = await fetchTitle(url);
  print('Title: $title');
}

Future<String?> fetchTitle(String url) async {
  try {
    final res = await http.get(Uri.parse(url));
    if (res.statusCode != 200) return null;
    final m = RegExp(r'"title"\s*:\s*"([^"]+)"').firstMatch(res.body);
    return m?.group(1);
  } catch (_) {
    return null;
  }
}
