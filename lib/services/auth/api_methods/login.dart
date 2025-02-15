import 'dart:convert';
import 'package:block_404/app/models/token.dart';
import 'package:http/http.dart' as http;

Future<Token?> loginApi(String baseUrl, String phone, String password) async {
  try {
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
      body: jsonEncode({
        "phone": phone,
        "password": password,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return Token.fromMap(data);
    } else if (response.statusCode == 401) {
      print("Unauthorized: Invalid credentials");
      return null;
    } else {
      print("Error ${response.statusCode}: ${response.body}");
      return null;
    }
  } catch (e) {
    print("Exception during login: $e");
    return null;
  }
}
