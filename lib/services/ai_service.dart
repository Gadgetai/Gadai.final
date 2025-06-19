import 'package:http/http.dart' as http;
import 'dart:convert';

class AIService {
  final String apiUrl = 'https://your-ai-endpoint.com/api';

  Future<String> getAIResponse(String query) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      body: jsonEncode({'question': query}),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body)['answer'];
    } else {
      throw Exception('Gagal memuat jawaban AI');
    }
  }
}
