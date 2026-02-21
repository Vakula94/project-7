import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post_model.dart';

class ApiService {
  static Future<List<Post>> fetchPosts() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );

    if (response.statusCode == 200) {
      return parseJson(response.body);
    } else {
      throw Exception('Error of download');
    }
  }

  static List<Post> parseJson(String responseBody) {
    final List<dynamic> jsonData = json.decode(responseBody);

    return jsonData.map((json) => Post.fromJson(json)).toList();
  }
}
