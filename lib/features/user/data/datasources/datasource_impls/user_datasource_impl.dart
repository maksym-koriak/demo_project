import 'dart:typed_data';

import 'package:flutter_interngram_delta/features/user/data/datasources/networking/user_api.dart';
import 'package:flutter_interngram_delta/features/user/data/datasources/user_datasource.dart';
import 'package:flutter_interngram_delta/features/user/data/dto/user_dto.dart';

class UserDatasourceImpl implements UserDatasource {
  final UserApi _api;

  UserDatasourceImpl(this._api);

  @override
  Future<UserDto> getCurrentUser() async {
    return await _api.getCurrentUser();
  }

  @override
  Future<void> updateCurrentUser(
    Uint8List? avatar,
    String? fullName,
    String nickname,
    String? city,
    String? bio,
  ) async {
    return await _api.updateCurrentUser(
      avatar,
      fullName,
      nickname,
      city,
      bio,
    );
  }
}
