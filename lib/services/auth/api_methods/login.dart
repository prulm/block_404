import 'dart:convert';
import 'package:block_404/app/models/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<User> loginApi(String baseUrl, String phone, String password) async {
  final response = await http.post(
    Uri.parse(baseUrl),
    body: {"phone": phone, "password": password},
  );

  if (response.statusCode == 200) {
    dynamic data = json.decode(response.body);
    dynamic access = json.decode(response.body[1]);
    dynamic refresh = json.decode(response.body[0]);
    debugPrint(data.toString());
    debugPrint(access.toString());
    debugPrint(refresh.toString());
    return User.fromMap(refresh);
  } else {
    throw Exception(response.body);
  }
}
