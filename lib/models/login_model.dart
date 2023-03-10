// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    required this.message,
    required this.schoolCredentials,
  });

  String message;
  SchoolCredentials schoolCredentials;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    message: json["message"],
    schoolCredentials: SchoolCredentials.fromJson(json["school_credentials"]),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "school_credentials": schoolCredentials.toJson(),
  };
}

class SchoolCredentials {
  SchoolCredentials({
    required this.token,
    required this.schoolId,
    required this.isProfileCompleted,
    required this.isEmailVerified,
    required this.isaAcademicSessionSet,
  });

  String token;
  String schoolId;
  bool isProfileCompleted;
  bool isEmailVerified;
  bool isaAcademicSessionSet;

  factory SchoolCredentials.fromJson(Map<String, dynamic> json) => SchoolCredentials(
    token: json["token"],
    schoolId: json["school_id"],
    isProfileCompleted: json["isProfile_completed"],
    isEmailVerified: json["isEmail_verified"],
    isaAcademicSessionSet: json["isaAcademicSessionSet"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "school_id": schoolId,
    "isProfile_completed": isProfileCompleted,
    "isEmail_verified": isEmailVerified,
    "isaAcademicSessionSet": isaAcademicSessionSet,
  };
}
