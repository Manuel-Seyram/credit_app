// To parse this JSON data, do
//
//     final xactscoreUser = xactscoreUserFromJson(jsonString);

import 'dart:convert';

XactscoreUser xactscoreUserFromJson(String str) =>
    XactscoreUser.fromJson(json.decode(str));

String xactscoreUserToJson(XactscoreUser data) => json.encode(data.toJson());

class XactscoreUser {
  String firstName;
  String lastName;
  String email;
  String phoneNumber;
  String password;
  String passwordConfirm;

  XactscoreUser({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.passwordConfirm,
  });

  factory XactscoreUser.fromJson(Map<String, dynamic> json) => XactscoreUser(
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        password: json["password"],
        passwordConfirm: json["password_confirm"],
      );

  Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "phone_number": phoneNumber,
        "password": password,
        "password_confirm": passwordConfirm,
      };
}
