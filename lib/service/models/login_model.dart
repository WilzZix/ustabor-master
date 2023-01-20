// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

class LoginModel {
  LoginModel({
    required this.date,
    required this.status,
    required this.result,
  });

  String date;
  Status status;
  Result result;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        date: json["date"] ?? ' ',
        status: Status.fromJson(json["status"]),
        result: Result.fromJson(json["result"]),
      );
}

class Result {
  Result({
    required this.token,
    required this.userId,
    required this.userRole,
  });

  String token;
  int userId;
  int userRole;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        token: json["token"] ?? ' ',
        userId: json["user_id"] ?? -1,
        userRole: json["user_role"] ?? -1,
      );
}

class Status {
  Status({
    required this.code,
    required this.message,
  });

  String code;
  String message;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        code: json["code"] ?? ' ',
        message: json["message"] ?? ' ',
      );
}
