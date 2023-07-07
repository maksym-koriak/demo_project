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
      print(response);
      return UserDto.fromJson(response.data);
    } on DioError catch (exception) {
      print(exception);
      throw exception.mapToCustomException();
    }
  }

  @override
  Future<void> updateCurrentUser(
      Uint8List? avatar, String? fullName, String nickname, String? city, String? bio) async {
    try {
      final String? avatarBase64 = avatar != null ? base64.encode(avatar.toList()) : null;
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
      final response = await _authorizedDio.dio.patch(
        updateUserUrl,
        data: data,
      );
      print(response);
    } on DioError catch (exception) {
      print(exception.response);
      throw exception.mapToCustomException();
    }
  }
}
