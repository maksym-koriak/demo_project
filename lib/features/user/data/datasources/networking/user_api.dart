import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_interngram_delta/core/data/networking/authorized_dio/authorized_dio.dart';
import 'package:flutter_interngram_delta/core/data/networking/dio_error_mapper.dart';
import 'package:flutter_interngram_delta/features/user/data/datasources/networking/user_api_constants.dart';
import 'package:flutter_interngram_delta/features/user/data/dto/user_dto.dart';

abstract class UserApi {
  Future<UserDto> getCurrentUser();

  Future<void> updateCurrentUser(
    Uint8List? avatar,
    String? fullName,
    String nickname,
    String? city,
    String? bio,
  );
}

class UserApiImpl implements UserApi {
  final AuthorizedDio _authorizedDio;

  UserApiImpl(this._authorizedDio);

  @override
  Future<UserDto> getCurrentUser() async {
    try {
      final response = await _authorizedDio.dio.get(
        currentUserUrl,
      );
      return UserDto.fromJson(response.data);
    } on DioError catch (exception) {
      throw exception.mapToCustomException();
    }
  }

  @override
  Future<void> updateCurrentUser(Uint8List? avatar, String? fullName,
      String nickname, String? city, String? bio) async {
    try {
      final String? avatarBase64 =
          avatar != null ? base64.encode(avatar.toList()) : null;
      final String? resultAvatarString =
          avatarBase64 != null ? 'data:image/png;base64,$avatarBase64' : null;
      final data = {
        'photo': resultAvatarString,
        "fullName": fullName,
        "nickName": nickname,
        'city': city,
        'bio': bio,
      };
      data.removeWhere((key, value) => value == null);
    } on DioError catch (exception) {
      throw exception.mapToCustomException();
    }
  }
}
