import 'package:block_404/screens/home.dart';
import 'package:block_404/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_toastr/flutter_toastr.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthCheck extends ConsumerStatefulWidget {
  const AuthCheck({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthCheckState();
}

class _AuthCheckState extends ConsumerState<AuthCheck> {
  void _showToast(String msg, BuildContext context) {
    FlutterToastr.show(
      msg,
      context,
      duration: FlutterToastr.lengthLong,
      backgroundColor:
          msg == "Incorrect Email/Password" ? Colors.red : Colors.black54,
      position: FlutterToastr.bottom,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (snapshot.hasData) {
            final token = snapshot.data!.getString("accessToken");
            if (token == null) {
              return const LoginScreen();
            } else {
              return const HomeScreen();
            }
          } else if (snapshot.hasError) {
            _showToast("An error occured", context);
            return const LoginScreen();
          } else {
            return const LoginScreen();
          }
        });
  }
}
