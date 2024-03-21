import 'dart:developer';
import 'package:clinic_app/utils/global.dart';
import 'package:clinic_app/utils/interfaces/http_request_interface.dart';
import 'package:clinic_app/utils/interfaces/news_interface.dart';
import 'package:dio/dio.dart';

class NewsRepository implements NewsInterface {

  HttpRequestInterFace http = locator.get<HttpRequestInterFace>();

  @override
  Future<Response?> getNews(int pageNum, int pageCount, String searchString, List<String> catSlugs) async {

    String slugs = "";
    for ( String slug in catSlugs ) {
      String end = !( catSlugs.indexOf(slug) == (catSlugs.length - 1 ) ) ? "%" : "";
      slugs += '$slug$end';
    }

    Response? response;
    try{
      response = await http.get(path: "/app/dynamic-content/publics?IsWithContent=true&Language=ar&SkipCount=${pageCount * pageNum}&MaxResultCount=$pageCount&CategorySlug=$slugs&Title=$searchString");
      // response = await http.get(path: "/app/dynamic-content/by-filters?Language=ar&MaxResultCount=$pageCount&SkipCount=${pageNum*pageCount}&IsSticky=false");
    } on DioException catch (error){
      log(error.toString());
    }
    return response;
  }

  @override
  Future<Response?> getCategories() async {
    Response? response;
    try{
      response = await http.get(path: "/app/category/publics?CategorySlugs=general%2Cdecisions&Language=ar");
    } on DioException catch (error){
      log(error.toString());
    }
    return response;
  }

  @override
  Future<Response?> getTestingNews() async {
    Dio dio = Dio(BaseOptions(baseUrl: "http://164.92.187.207:5005/api"));
    
    Response? response;
    try{
      response = await dio.get("/app/dynamic-content/publics?CategorySlug=7N62EZO-YgkI6oO&IsWithContent=true&Language=ar");
      // response = await http.get(path: "/app/dynamic-content/publics?CategorySlug=7N62EZO-YgkI6oO&IsWithContent=true&Language=ar");
      // response = await http.get(path: "/app/dynamic-content/by-filters?Language=ar&MaxResultCount=$pageCount&SkipCount=${pageNum*pageCount}&IsSticky=false");
    } on DioException catch (error){
      log(error.response.toString());
    } catch (e){
      log(e.toString());
    }
    return response;
  }

}