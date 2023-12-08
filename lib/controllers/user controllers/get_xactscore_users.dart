// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../API/endpoints.dart';

class XactscoreUsers extends GetxController {
  final Dio dio = Dio();
  final CookieJar cookie = CookieJar();

  static final XactscoreUsers _instance = XactscoreUsers._internal();

  factory XactscoreUsers() {
    return _instance;
  }

  XactscoreUsers._internal() {
    _configureDio();
  }

  void _configureDio() {
    dio.interceptors.add(CookieManager(cookie));
  }

  // Method to set cookies in the Dio instance
  void setCookies(List<Cookie> cookies) {
    cookie.saveFromResponse(Uri.parse(Endpoints.baseURL), cookies);
  }

  Future<dynamic> getUserProfileData() async {
    try {
      final response = await dio.get(
        Endpoints.baseURL + Endpoints.getuser,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );

      if (kDebugMode) {
        print('Response Status Code: ${response.statusCode}');
        print('Response Data: ${response.data}');
        print(await cookie.loadForRequest(response.requestOptions.uri));
      }

      return response.data;
    } on DioError catch (e) {
      if (kDebugMode) {
        print('Dio Error: ${e.message}');
      }

      if (e.response != null) {
        if (kDebugMode) {
          print('Dio Error Response Status Code: ${e.response!.statusCode}');
          print('Dio Error Response Data: ${e.response!.data}');
        }
      }

      return e.response?.data;
    }
  }
}
