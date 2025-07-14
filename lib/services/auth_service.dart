import 'package:dio/dio.dart';
import '../models/login_request.dart';
import '../models/register_request.dart';
import '../models/user.dart';
import 'api_client.dart';

class AuthResult {
  final User user;
  final String token;
  AuthResult({required this.user, required this.token});
}

class AuthService {
  Future<AuthResult> login(LoginRequest request) async {
    try {
      final response =
          await ApiClient().dio.post('/auth/login', data: request.toJson());
      final data = response.data['data'];
      return AuthResult(
        user: User.fromJson(data['user']),
        token: data['token'],
      );
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Login failed');
    }
  }

  Future<AuthResult> register(RegisterRequest request) async {
    try {
      final response =
          await ApiClient().dio.post('/auth/register', data: request.toJson());
      final data = response.data['data'];
      return AuthResult(
        user: User.fromJson(data['user']),
        token: data['token'],
      );
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Register failed');
    }
  }

  Future<void> forgotPassword(String email) async {
    try {
      await ApiClient().dio.post('/forgot-password', data: {'email': email});
    } on DioException catch (e) {
      throw Exception(
          e.response?.data['message'] ?? 'Failed to send reset link');
    }
  }

  Future<void> resetPassword({
    required String email,
    required String token,
    required String password,
    required String passwordConfirmation,
  }) async {
    try {
      await ApiClient().dio.post('/reset-password', data: {
        'email': email,
        'token': token,
        'password': password,
        'password_confirmation': passwordConfirmation,
      });
    } on DioException catch (e) {
      throw Exception(
          e.response?.data['message'] ?? 'Failed to reset password');
    }
  }
}
