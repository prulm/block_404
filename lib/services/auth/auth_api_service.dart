import 'package:block_404/app/models/token.dart';
import 'package:block_404/services/auth/api_methods/login.dart';
import 'package:block_404/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthApiService {
  final String baseUrl;

  AuthApiService() : baseUrl = apiUrl;

  Future<bool> login(String phone, String password) async {
    try {
      Token? token =
          await loginApi('$baseUrl/auth/jwt/create/', phone, password);
      if (token != null) {
        print(token.toString());
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('accessToken', token.access);
        await prefs.setString('refreshToken', token.refresh);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
  // Signup
}
