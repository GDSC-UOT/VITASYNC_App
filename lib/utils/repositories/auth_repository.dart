import 'package:clinic_app/utils/interfaces/auth_interface.dart';
import 'package:dio/dio.dart';

class AuthRepository implements AuthInterface {

  // final HttpRequestInterFace httpRequest = locator.get<HttpRequestInterFace>();

  @override
  void forgetPassword(String usernameOrEmail) {
    // TODO: implement forgetPassword
  }

  @override
  void getNewToken() {
    // TODO: implement getNewToken
  }

  @override
  Future<Response?> login(String usernameOrEmail, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  void register() {
    // TODO: implement register
  }

}