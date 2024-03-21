import 'package:dio/dio.dart';

abstract class AuthInterface {

  void register();
  Future<Response?> login(String usernameOrEmail, String password);
  void forgetPassword(String usernameOrEmail);
  void getNewToken();

}