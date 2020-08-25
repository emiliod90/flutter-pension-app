import 'package:http/http.dart' as http;
import 'dart:convert';

// Dummy API https://reqres.in/
// username: eve.holt@reqres.in
// password cityslicka
Future loginUser(String username, String password) async {
  String endpoint = 'https://reqres.in/api/login';
  final response = await http.post(endpoint,
      headers: {"Accept": "Application/json"},
      body: {'email': username, 'password': password});
  if (response.statusCode != null) {
    var jsonResponse = jsonDecode(response.body);
    return jsonResponse;

  }
  else return null;
}
