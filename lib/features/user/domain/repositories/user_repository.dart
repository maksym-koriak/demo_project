import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter_interngram_delta/core/domain/failures/failures.dart';
import 'package:flutter_interngram_delta/features/user/domain/entities/user.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> getCurrentUser();

  Future<Either<Failure, void>> updateCurrentUser(
    Uint8List? avatar,
    String? fullName,
    String nickname,
    String? city,
    String? bio,
  );
}
