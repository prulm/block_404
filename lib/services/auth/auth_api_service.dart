import 'package:block_404/services/auth/api_methods/login.dart';
import 'package:block_404/utils/constants.dart';

class AuthApiService {
  final String baseUrl;

  AuthApiService() : baseUrl = apiUrl;

  Future login(String phone, String password) async {
    return loginApi('$baseUrl/auth/jwt/create/', phone, password);
  }
  // Signup
}
