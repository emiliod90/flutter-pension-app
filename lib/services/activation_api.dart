import 'package:http/http.dart' as http;
import 'dart:convert';

// Dummy API https://reqres.in/
// username: eve.holt@reqres.in
// password cityslicka
Future RegisterUser(String email, String password, String mobile, bool tos) async {
  String endpoint = 'https://reqres.in/api/login';
  final response = await http.post(endpoint,
      headers: {"Accept": "Application/json"},
      body: {'email': email, 'password': password, 'mobile': mobile,'tos': tos});
  if (response.statusCode != null) {
    var jsonResponse = jsonDecode(response.body);
    return jsonResponse;

  }
  else return null;
}