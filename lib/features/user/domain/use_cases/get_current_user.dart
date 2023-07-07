import 'package:dartz/dartz.dart';
import 'package:flutter_interngram_delta/core/domain/failures/failures.dart';
import 'package:flutter_interngram_delta/core/domain/usecase/usecase.dart';
import 'package:flutter_interngram_delta/features/user/domain/entities/user.dart';
import 'package:flutter_interngram_delta/features/user/domain/repositories/user_repository.dart';

class GetCurrentUser extends UseCase<User, NoParams> {
  final UserRepository _repository;

  GetCurrentUser(this._repository);

  @override
  Future<Either<Failure, User>> call(NoParams params) async {
    return await _repository.getCurrentUser();
  }
}
