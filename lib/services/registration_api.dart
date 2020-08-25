import 'package:http/http.dart' as http;
import 'dart:convert';

Future RegisterUser(String id, String dob, String ni) async {
  String endpoint = 'http://52.213.247.254:8080/appregistration/v1/gettokeninfo';
  final response = await http.put(endpoint,
      headers: {"Accept": "Application/json", "Content-Type": "application/json"},
      body: jsonEncode({'mem_id': id, 'dob': dob, 'ni_num': ni}));
  if (response.statusCode != null) {
    var jsonResponse = jsonDecode(response.body);
    return jsonResponse;

  }
  else return null;
}
