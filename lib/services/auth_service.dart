import 'dart:convert';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:guident_admin/model/login_model.dart';
// import 'package:guident_admin/model/network_response_be.dart';
// import 'package:guident_admin/network/network_service.dart';

import '../network/network_enums.dart';
import '../network/network_helper.dart';
import 'package:http/http.dart' as http;

// final authProvider = Provider<AuthService>((ref) => AuthService());

/*class AuthService {
  Future<LoginModel> login(String email, String password) async {
    final response = await NetworkService.sendRequest(
        requestType: RequestType.post,
        url: '${StaticValues.baseUrl}login_school',
        body: json.encode({"school_email": email, "admin_password": password}));

    log('Response : ${response?.body}');
    if (jsonDecode(response!.body)['error'] != null) {
      return LoginModel(
          message: "Invalid Credential",
          schoolCredentials: SchoolCredentials(
              token: "",
              schoolId: "",
              isProfileCompleted: false,
              isEmailVerified: false,
              isaAcademicSessionSet: false));
    }

    return await NetworkHelper.filterResponse(
        callBack: (json) {
          log(json.toString());
          return loginModelFromJson(jsonEncode(json));
        },
        response: response,
        parameterName: CallBackParameterName.all,
        onFailureCallBackWithMessage: (errorType, msg) {
          return null;
        });
  }

  Future<NetworkResponseFromBE> createAccount(
      String email, String password) async {
    final response = await NetworkService.sendRequest(
        requestType: RequestType.post,
        url: '${StaticValues.baseUrl}create_school/',
        body: json.encode({"school_email": email, "admin_password": password}));

    return await NetworkHelper.filterResponse(
        callBack: (json) {
          return NetworkResponseFromBE('Account created', 'Success', 200);
        },
        response: response,
        parameterName: CallBackParameterName.all,
        onFailureCallBackWithMessage: (errorType, msg) {
          return NetworkResponseFromBE(msg!, msg, response!.statusCode);
        });
  }

  Future<NetworkResponseFromBE> requestOtp(String email) async {
    final response = await NetworkService.sendRequest(
        requestType: RequestType.post,
        url: '${StaticValues.baseUrl}request_otp',
        body: json.encode({"school_email": email}));

    return await NetworkHelper.filterResponse(
        callBack: (json) {
          return NetworkResponseFromBE(
              'Account created, please enter the otp sent to your email address',
              'Success',
              200);
        },
        response: response,
        parameterName: CallBackParameterName.all,
        onFailureCallBackWithMessage: (errorType, msg) {
          return NetworkResponseFromBE(msg!, msg, response!.statusCode);
        });
  }

  Future<NetworkResponseFromBE> verifyOtp(String email, String otp) async {
    final response = await NetworkService.sendRequest(
        requestType: RequestType.patch,
        url: '${StaticValues.baseUrl}verify_email_account/',
        body: json.encode({"otp": otp, "school_email": email}));

    return await NetworkHelper.filterResponse(
        callBack: (json) {
          return NetworkResponseFromBE('OTP Verified', 'Success', 200);
        },
        response: response,
        parameterName: CallBackParameterName.all,
        onFailureCallBackWithMessage: (errorType, msg) {
          return NetworkResponseFromBE(msg!, msg, response!.statusCode);
        });
  }

  Future completeProfile(
      String token,
      String schoolID,
      String schoolName,
      String schoolAddress,
      String rcNumber,
      String schoolLogo,
      String adminFirstName,
      String adminLastName,
      String phoneNumber,
      String adminPosition) async {
    var imageUrl = await upload(schoolLogo, schoolID, token);
    final response = await NetworkService.sendRequest(
        requestType: RequestType.patch,
        url:
            '${StaticValues.baseUrl}complete_school_profile/?school_id=$schoolID',
        token: token,
        body: json.encode({
          "school_name": schoolName,
          "school_address": schoolAddress,
          "rc_number": rcNumber,
          "school_logo": imageUrl,
          "ImagePublicUrl": imageUrl,
          "admin_first_name": adminFirstName,
          "admin_last_name": adminLastName,
          "phone_number": phoneNumber,
          "admin_position": adminPosition
        }));
    print('-------');
    print(response?.body);

    return await NetworkHelper.filterResponse(
        callBack: (json) {
          return NetworkResponseFromBE(json['message'], 'Success', 200);
        },
        response: response,
        parameterName: CallBackParameterName.all,
        onFailureCallBackWithMessage: (errorType, msg) {
          return NetworkResponseFromBE(msg!, msg, response!.statusCode);
        });
  }

  Future<String> upload(String file, String schoolID, String token) async {
    print(file);
    var headers = {
      'Content-Type': 'multipart/form-data',
      'Authorization': 'Bearer $token',
      "Accept": "application/json",
    };
    var request = http.MultipartRequest(
        'POST',
        Uri.parse(
            '${StaticValues.baseUrl}complete_school_profile/?school_id=$schoolID'));
    request.files.add(await http.MultipartFile.fromPath('image', file));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    print(response);
    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
      return '';
    } else {
      print(response.reasonPhrase);
      return '';
    }
  }
}*/
