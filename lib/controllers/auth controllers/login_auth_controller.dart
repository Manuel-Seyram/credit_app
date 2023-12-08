import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../API/app_exceptions.dart';
import '../../API/endpoints.dart';
import '../../UI Screens/home.dart';
import '../user controllers/get_xactscore_users.dart';

class LoginController extends GetxController {
  var dio = Dio();
  final cookie = CookieJar();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> loginUser() async {
    var uri = Uri.parse(Endpoints.baseURL + Endpoints.loginUser);

    try {
      // Add CookieManager to handle cookies
      dio.interceptors.add(CookieManager(cookie));

      var response = await dio.post(
        Endpoints.baseURL + Endpoints.loginUser,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
        data: {
          'email': emailController.text.trim(),
          'password': passwordController.text,
        },
      ).timeout(const Duration(seconds: Endpoints.connectionTimeout));

      if (kDebugMode) {
        print('Response Status Code: ${response.statusCode}');
        print('Response Data: ${response.data}');
      }

      if (response.statusCode == 200) {
        final json = response.data;

        if (kDebugMode) {
          print(await cookie.loadForRequest(uri));
          print("Login successful. Navigating to Home screen...");
        }

        // Pass cookies to XactscoreUsers instance
        XactscoreUsers().setCookies(await cookie.loadForRequest(uri));

        // Clear controllers and navigate to Home screen
        emailController.clear();
        passwordController.clear();
        Get.offAll(const Home());

        if (json['code'] == 1) {
          throw jsonDecode(response.data)['message'];
        }
      } else {
        throw jsonDecode(response.data)["Message"] ?? "Unknown Error Occurred";
      }
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString())
          .toString();
    } on TimeoutException {
      throw ApiNotRespondingException(
          'API not responded in time', uri.toString());
    } catch (error) {
      if (kDebugMode) {
        print(error.toString());
      }

      Get.back();

      showDialog(
        context: Get.context!,
        builder: (context) {
          return const SimpleDialog(
            title: Text('Error'),
            contentPadding: EdgeInsets.all(20),
            children: [
              Text('Email or Password incorrect. Please check and try again.')
            ],
          );
        },
      );
    }
  }
}
