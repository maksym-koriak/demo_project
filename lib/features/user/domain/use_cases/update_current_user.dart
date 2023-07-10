import 'package:dartz/dartz.dart';
import 'package:flutter_interngram_delta/core/domain/failures/failures.dart';
import 'package:flutter_interngram_delta/core/domain/usecase/usecase.dart';
import 'package:flutter_interngram_delta/features/user/domain/repositories/user_repository.dart';

class UpdateCurrentUser extends UseCase<void, UpdateUserParams> {
  final UserRepository _repository;

  UpdateCurrentUser(this._repository);

  @override
  Future<Either<Failure, void>> call(UpdateUserParams params) async {
    return await _repository.updateCurrentUser(
      params.avatar,
      params.fullName,
      params.nickname,
      params.city,
      params.bio,
    );
  }
}
