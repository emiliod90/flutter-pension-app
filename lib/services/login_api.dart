import 'package:http/http.dart' as http;
import 'dart:convert';

// Dummy API https://reqres.in/api/login
// email: eve.holt@reqres.in & password: cityslicka
// Bhardwaj API - http://52.213.247.254:8080/login/v1/gettokeninfo
// email: test4@gmail.com & password: password4
Future loginUser(String email, String password) async {
  String endpoint = 'https://reqres.in/api/login';
  final response = await http.put(endpoint,
      headers: {"Accept": "Application/json", "Content-Type": "application/json"},
      body:  jsonEncode({'email': email, 'password': password}));
  if (response.statusCode != null) {
    //return response.statusCode;
    var jsonResponse = jsonDecode(response.body);
    return jsonResponse;

  }
  else return null;
}
