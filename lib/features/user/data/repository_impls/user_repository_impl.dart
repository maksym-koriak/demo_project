import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter_interngram_delta/core/data/exceptions/exceptions.dart';
import 'package:flutter_interngram_delta/core/domain/failures/failures.dart';
import 'package:flutter_interngram_delta/features/user/data/datasources/user_datasource.dart';
import 'package:flutter_interngram_delta/features/user/data/dto/user_dto.dart';
import 'package:flutter_interngram_delta/features/user/domain/entities/user.dart';
import 'package:flutter_interngram_delta/features/user/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserDatasource _userDatasource;

  UserRepositoryImpl(this._userDatasource);

  @override
  Future<Either<Failure, User>> getCurrentUser() async {
    try {
      final UserDto userDto = await _userDatasource.getCurrentUser();
      final User user = userDto.toEntity();
      return Right(user);
    } on UnauthorizedException {
      return Left(
        UnauthorizedFailure(),
      );
    } catch (exception) {
      return Left(
        UnknownFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, void>> updateCurrentUser(Uint8List? avatar,
      String? fullName, String nickname, String? city, String? bio) async {
    try {
      return Right(
        await _userDatasource.updateCurrentUser(
          avatar,
          fullName,
          nickname,
          city,
          bio,
        ),
      );
    } on NotFoundException {
      return Left(
        UserNotFoundFailure(),
      );
    } catch (exception) {
      return Left(
        UnknownFailure(),
      );
    }
  }
}
