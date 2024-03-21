import 'package:dio/dio.dart';

abstract class UsersInterface {
  Future<Response?> getUsers();
}