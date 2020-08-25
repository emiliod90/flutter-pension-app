import 'package:http/http.dart' as http;
import 'dart:convert';

Future ActivateUser(String email, String password, String mobile) async {
  String endpoint = 'http://52.213.247.254:8080/appregistration/v1/gettokeninfo';
  final response = await http.put(endpoint,
      headers: {"Accept": "Application/json", "Content-Type": "application/json"},
      body: jsonEncode({'email_id': email, 'password': password, 'mobile': mobile,'tnc': 1}));
  if (response.statusCode != null) {
    var jsonResponse = jsonDecode(response.body);
    return jsonResponse;

  }
  else return null;
}
