import 'package:http/http.dart' as http;
import 'dart:convert';

class NewsService {
  final String newsApiKey = 'YOUR_NEWS_API_KEY';
  final String baseUrl = 'https://newsapi.org/v2/everything';

  Future<List<String>> getCryptoNews(String symbol) async {
    final url = '$baseUrl?q=$symbol&apiKey=$newsApiKey';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final articles = jsonDecode(response.body)['articles'];
      return List<String>.from(
          articles.map((article) => article['url']).take(5));
    } else {
      return ['Berita tidak ditemukan'];
    }
  }
}
