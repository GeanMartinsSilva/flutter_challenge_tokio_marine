import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  final String apiUrl;

  ApiService(this.apiUrl);

  Future<List<dynamic>> getRelatives() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load relatives');
    }
  }
}
