import 'dart:developer';
import 'package:clinic_app/utils/global.dart';
import 'package:clinic_app/utils/interfaces/http_request_interface.dart';
import 'package:clinic_app/utils/interfaces/users_interface.dart';
import 'package:dio/dio.dart';

class UserRepository implements UsersInterface {

  HttpRequestInterFace httpRequest = locator.get<HttpRequestInterFace>();

  @override
  Future<Response?> getUsers() async {
    Response? res;

    try{
      res = await httpRequest.get(path: "/users");
    } catch ( error ) {
      log(error.toString());
      rethrow;
    }
    return res;
  }
}