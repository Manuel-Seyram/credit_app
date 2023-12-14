import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:credit_app/UI%20Screens/Profile/profile_home.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../API/app_exceptions.dart';
import '../../API/endpoints.dart';

class UpdateUser extends GetxController {
  final Dio dio = Dio();
  final CookieJar cookie = CookieJar();

  static final UpdateUser _instance = UpdateUser._internal();

  factory UpdateUser() {
    return _instance;
  }

  UpdateUser._internal() {
    _configureDio();
  }

  void _configureDio() {
    dio.interceptors.add(CookieManager(cookie));
  }

  // Method to set cookies in the Dio instance
  void setCookies(List<Cookie> cookies) {
    cookie.saveFromResponse(Uri.parse(Endpoints.baseURL), cookies);
  }

  TextEditingController fullNameController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController sexController = TextEditingController();
  TextEditingController idNumberController = TextEditingController();
  TextEditingController documentNumberController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController placeofIssuanceController = TextEditingController();
  TextEditingController expiryDateController = TextEditingController();

  Future<dynamic> updateUser(String? userID) async {
    var uri = Uri.parse('${Endpoints.baseURL}${Endpoints.updateUser}/$userID');

    try {
      var response = await dio.put(
        '${Endpoints.baseURL}${Endpoints.updateUser}/$userID',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
        data: {
          'full_name': fullNameController.text,
          'nationality': nationalityController.text,
          'dob': dobController.text,
          'sex': sexController.text,
          'id_number': idNumberController.text,
          'document_no': documentNumberController.text,
          'height': heightController.text,
          'place_of_issuance': placeofIssuanceController.text,
          'expiry_date': expiryDateController.text,
        },
      ).timeout(const Duration(seconds: Endpoints.connectionTimeout));

      if (kDebugMode) {
        print('Response Status Code: ${response.statusCode}');
        print('Response Data: ${response.data}');
      }

      if (response.statusCode == 200) {
        final json = response.data;

        if (kDebugMode) {
          print(await cookie.loadForRequest(response.requestOptions.uri));
          print("Ghana card added succesfully.");
          // Print the response data after a successful request
          print('Success Response Data: $json');
        }

        // Clear controllers and navigate to Home screen
        fullNameController.clear();
        nationalityController.clear();
        dobController.clear();
        sexController.clear();
        idNumberController.clear();
        documentNumberController.clear();
        heightController.clear();
        placeofIssuanceController.clear();
        expiryDateController.clear();
        Get.defaultDialog(
            radius: 10,
            title: 'Success',
            titleStyle: const TextStyle(color: Colors.green),
            content: const Text(
              'Ghana card added successfully',
              maxLines: 2,
              softWrap: true,
            ),
            confirm: TextButton(
                onPressed: () {
                  Get.off(const ProfileHome());
                },
                child: const Text('OK')));

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
            children: [Text('Something happened couldnt add ghana card')],
          );
        },
      );
    }
  }
}
