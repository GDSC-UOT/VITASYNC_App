

import 'package:clinic_app/utils/interfaces/http_request_interface.dart';
import 'package:clinic_app/utils/interfaces/news_interface.dart';
import 'package:clinic_app/utils/interfaces/storage_interface.dart';
import 'package:clinic_app/utils/interfaces/users_interface.dart';
import 'package:clinic_app/utils/repositories/http_request_repository.dart';
import 'package:clinic_app/utils/repositories/news_repository.dart';
import 'package:clinic_app/utils/repositories/secure_storage_repository.dart';
import 'package:clinic_app/utils/repositories/users_repository.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setup(){
  locator.registerLazySingleton<HttpRequestInterFace>(() => HttpRequestRepository());
  locator.registerLazySingleton<StorageInterFace>(() => SecureStorageRepository());
  locator.registerLazySingleton<NewsInterface>(() => NewsRepository());
  locator.registerLazySingleton<UsersInterface>(() => UserRepository());
}