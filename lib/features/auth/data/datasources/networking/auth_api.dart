import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_interngram_delta/core/data/exceptions/exceptions.dart';
import 'package:flutter_interngram_delta/core/data/networking/authorized_dio/authorized_dio.dart';
import 'package:flutter_interngram_delta/core/data/networking/dio_error_mapper.dart';
import 'package:flutter_interngram_delta/features/auth/data/datasources/networking/auth_networking_constants.dart';
import 'package:flutter_interngram_delta/features/auth/data/dto/auth_user_dto.dart';
import 'package:flutter_interngram_delta/features/user/data/dto/user_dto.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class AuthApi {
  Future<void> attemptAccess();

  Future<void> validateEmail(String email);

  Future<void> validatePhone(String phone);

  Future<void> recoveryValidateEmail(String email);

  Future<void> recoveryValidatePhone(String phone);

  Future<void> recoveryUpdatePassword(
    String? phone,
    String? email,
    String password,
    String confirmPassword,
  );

  Future<void> validateNickname(String nickname);

  Future<void> requestVerificationCode(String contactInfo);

  Future<bool> validateVerificationCode(String contactInfo, String code);

  Future<dynamic> signUpUser(AuthUserDto userDto);

  Future<Map<String, dynamic>> signInFacebook();

  Future<Map<String, dynamic>> signInGoogle();

  Future<Map<String, dynamic>> signInUser(String username, String password);

  Future<void> updateUserOptionalFlow(
      Uint8List? avatar, String? city, String? bio);
}

class AuthApiImpl implements AuthApi {
  final Dio _dio;
  final AuthorizedDio _authorizedDio;

  AuthApiImpl(this._dio, this._authorizedDio);

  @override
  Future<void> attemptAccess() {
    throw UnimplementedError();
  }

  @override
  Future<void> validateEmail(String email) async {
    try {
      await _dio.get('$emailVerificationUrl$email');
    } on DioError catch (e) {
      throw e.mapToCustomException();
    }
  }

  @override
  Future<void> validatePhone(String phone) async {
    try {
      await _dio.get('$phoneValidationUrl$phone');
    } on DioError catch (e) {
      throw e.mapToCustomException();
    }
  }

  @override
  Future<void> recoveryValidateEmail(String email) async {
    try {
      await _dio.get('$recoveryEmailValidationUrl$email');
    } on DioError catch (e) {
      throw e.mapToCustomException();
    }
  }

  @override
  Future<void> recoveryValidatePhone(String phone) async {
    try {
      await _dio.get('$recoveryPhoneValidationUrl$phone');
    } on DioError catch (e) {
      throw e.mapToCustomException();
    }
  }

  @override
  Future<void> validateNickname(String nickname) async {
    try {
      await _dio.post(
        nicknameValidationUrl,
        data: {nicknameKey: nickname},
      );
    } on DioError catch (e) {
      throw e.mapToCustomException();
    }
  }

  @override
  Future<void> requestVerificationCode(String contactInfo) async {
    try {
      if (contactInfo.contains('@')) {
        await _dio.post(
          sendCodeToEmailUrl,
          data: {emailKey: contactInfo},
        );
      } else {
        await _dio.post('$sendCodeToPhoneUrl$contactInfo');
      }
    } on DioError catch (exception) {
      throw exception.mapToCustomException();
    }
  }

  @override
  Future<bool> validateVerificationCode(String contactInfo, String code) async {
    try {
      final String requestUrlPartialRoute = contactInfo.contains('@')
          ? verificationCodeValidationEmailUrl
          : verificationCodeValidationPhoneUrl;
      var response =
          await _dio.get('$requestUrlPartialRoute$contactInfo/$code');
      final bool? message =
          response.data != null ? response.data[validationResultKey] : null;
      return message ?? false;
    } on DioError catch (exception) {
      throw exception.mapToCustomException();
    }
  }

  @override
  Future<Map<String, dynamic>> signInUser(
      String username, String password) async {
    try {
      final response = await _dio.post(
        signInUrl,
        data: {
          usernameKey: username,
          passwordKey: password,
        },
      );
      return response.data;
    } on DioError catch (exception) {
      throw exception.mapToCustomException();
    }
  }

  @override
  Future<dynamic> signUpUser(AuthUserDto userDto) async {
    try {
      final String contactInfoKey = userDto.email != null ? emailKey : phoneKey;
      final String contactInfo = userDto.email ?? userDto.phoneNumber!;
      var response = await _dio.post(signUpUrl, data: {
        contactInfoKey: contactInfo,
        nicknameKey: userDto.nickName,
        birthdayKey: userDto.dateOfBirth,
        passwordKey: userDto.password,
        fullNameKey: userDto.fullName,
      });
      return response.data;
    } on DioError catch (exception) {
      throw exception.mapToCustomException();
    }
  }

  @override
  Future<Map<String, dynamic>> signInFacebook() async {
    try {
      // FacebookAuth.instance.
      final facebookLoginResult = await FacebookAuth.instance.login(
        loginBehavior: LoginBehavior.webOnly,
        permissions: [
          openIdPermission,
          publicProfilePermission,
          emailPermission,
          userBirthdayPermission,
          userHometownPermission,
          userLocationPermission,
        ],
      );
      if (facebookLoginResult.status == LoginStatus.success &&
          facebookLoginResult.accessToken != null) {
        var response = await _dio.post(
          signInFacebookUrl,
          data: {facebookTokenKey: facebookLoginResult.accessToken!.token},
        );
        return response.data;
      }
      throw FacebookSignInException();
    } on DioError catch (exception) {
      throw exception.mapToCustomException();
    }
  }

  @override
  signInGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInUser;

      googleSignInUser = Platform.isIOS
          ? await GoogleSignIn(clientId: clientIdIos, scopes: [googleScope])
              .signIn()
          : await GoogleSignIn(scopes: [googleScope]).signIn();

      if (googleSignInUser != null) {
        final headers = await googleSignInUser.authHeaders;
        final googleResponse = await _dio.get(
          peopleGoogleApisInfo,
          options: Options(
            headers: {
              authHeader: headers[authHeader],
            },
          ),
        );

        final birthdays = googleResponse.data[birthdaysKey] as List<dynamic>;
        final dateOfBirth = birthdays.last[dateKey] as Map<String, dynamic>;
        final dateToConvert = DateTime.utc(
          dateOfBirth[yearKey],
          dateOfBirth[monthKey],
          dateOfBirth[dayKey],
        );

        final finalBirthday = dateToConvert.toIso8601String();

        var response = await _dio.post(signInGoogleUrl,
            data: googleSignInUser.photoUrl != null
                ? {
                    googleEmailKey: googleSignInUser.email,
                    googleIdKey: googleSignInUser.id,
                    fullNameKey: googleSignInUser.displayName,
                    birthdayKey: finalBirthday,
                    googlePhotoKey: googleSignInUser.photoUrl
                  }
                : {
                    googleEmailKey: googleSignInUser.email,
                    googleIdKey: googleSignInUser.id,
                    fullNameKey: googleSignInUser.displayName,
                    birthdayKey: finalBirthday,
                  });
        return response.data;
      }
      throw GoogleSignInException();
    } on DioError catch (exception) {
      throw exception.mapToCustomException();
    }
  }

  @override
  Future<void> recoveryUpdatePassword(
    String? email,
    String? phone,
    String password,
    String confirmPassword,
  ) async {
    try {
      final String contactInfoKey = email != null ? emailKey : recoveryPhoneKey;
      final String contactInfo = email ?? phone!;
      await _dio.post(recoveryUpdatePasswordUrl, data: {
        contactInfoKey: contactInfo,
        passwordKey: password,
        confirmPasswordKey: confirmPassword,
      });
    } on DioError catch (exception) {
      throw exception.mapToCustomException();
    }
  }

  @override
  Future<void> updateUserOptionalFlow(
      Uint8List? avatar, String? city, String? bio) async {
    try {
      final String? avatarBase64 =
          avatar != null ? base64.encode(avatar.toList()) : null;
      final data = {
        'photo': 'data:image/png;base64,$avatarBase64',
        'city': city,
        'bio': bio,
      };
      data.removeWhere((key, value) => value == null);
      final response = await _authorizedDio.dio.patch(
        updateUserUrl,
        data: data,
        options: Options(sendTimeout: 30000, receiveTimeout: 30000),
      );
    } on DioError catch (exception) {
      throw exception.mapToCustomException();
    }
  }
}
