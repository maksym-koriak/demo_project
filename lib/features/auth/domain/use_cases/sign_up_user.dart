import 'package:dartz/dartz.dart';
import 'package:flutter_interngram_delta/core/domain/failures/failures.dart';
import 'package:flutter_interngram_delta/core/domain/usecase/usecase.dart';
import 'package:flutter_interngram_delta/features/auth/domain/repositories/auth_repository.dart';

class SignUpUser extends UseCase<void, UserEntityParams> {
  final AuthRepository _repository;

  SignUpUser(this._repository);

  @override
  Future<Either<Failure, void>> call(UserEntityParams params) async {
    return await _repository.signUpUser(params.user);
  }
}
