import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:credit_app/UI%20Screens/Auth_Screens/otp.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:shared_preferences/shared_preferences.dart';

import '../../API/app_exceptions.dart';
import '../../API/endpoints.dart';

class RegisterController extends GetxController {
  var dio = Dio();

  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
  //final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future<void> registerUser() async {
    var uri = Uri.parse(Endpoints.baseURL + Endpoints.loginUser);
    try {
      var response = await dio.post(Endpoints.baseURL + Endpoints.registerUser,
          options: Options(headers: {
            'Content-Type': 'application/json',
          }),
          data: {
            'first_name': fullnameController.text,
            'email': emailController.text.trim(),
            'phone_number': phoneController.text,
            'password': passwordController.text,
            'password_confirm': passwordConfirmController.text,
          }).timeout(const Duration(seconds: Endpoints.connectionTimeout));
      if (kDebugMode) {
        print('Response Status Code: ${response.statusCode}');
        print('Response Data: ${response.data}');
      }
      if (response.statusCode == 200) {
        final json = response.data;
        if (kDebugMode) {
          print("Registration successful. Navigating to otp...");
        }
        emailController.clear();
        passwordController.clear();
        Get.offAll(const Otp());

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
            return SimpleDialog(
              title: const Text('Error'),
              contentPadding: const EdgeInsets.all(20),
              children: [
                Text(
                    'Registration unsuccessful. Please check and try again. $json')
              ],
            );
          });
    }
  }
}
