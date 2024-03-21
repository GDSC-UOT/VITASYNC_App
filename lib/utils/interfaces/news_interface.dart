import 'package:dio/dio.dart';

abstract class NewsInterface {
  Future<Response?> getNews(int pageNum, int pageCount, String searchString, List<String> catSlug);
  Future<Response?> getCategories();
  Future<Response?> getTestingNews();
}