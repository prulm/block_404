import 'dart:convert';
import 'package:block_404/app/models/user.dart';
import 'package:http/http.dart' as http;

Future<User> loginApi(String baseUrl, String phone, String password) async {
  final response = await http.post(
    Uri.parse('$baseUrl/login'),
    body: {"phone": phone, "password": password},
  );

  if (response.statusCode == 200) {
    dynamic data = json.decode(response.body);
    return User.fromMap(data);
  } else {
    throw Exception(response.body);
  }
}
