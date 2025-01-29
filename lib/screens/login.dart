import 'package:block_404/services/auth/auth_api_service.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final phoneController = TextEditingController();
final passwordController = TextEditingController();
final authApiService = AuthApiService();

void login(BuildContext context, phone, password) {
  authApiService.login(phone, password);
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: Center(
          child: Column(
            children: [
              const Text("Phone"),
              TextField(
                controller: phoneController,
              ),
              const Text("Password"),
              TextField(
                controller: passwordController,
              ),
              TextButton(
                  onPressed: () {
                    login(
                        context, phoneController.text, passwordController.text);
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ));
  }
}
