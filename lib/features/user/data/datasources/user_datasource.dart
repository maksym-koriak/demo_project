import 'dart:typed_data';

import 'package:flutter_interngram_delta/features/user/data/dto/user_dto.dart';

abstract class UserDatasource {
  Future<UserDto> getCurrentUser();

  Future<void> updateCurrentUser(
    Uint8List? avatar,
    String? fullName,
    String nickname,
    String? city,
    String? bio,
  );
}
