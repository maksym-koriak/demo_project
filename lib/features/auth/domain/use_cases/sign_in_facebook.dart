import 'package:dartz/dartz.dart';
import 'package:flutter_interngram_delta/core/domain/failures/failures.dart';
import 'package:flutter_interngram_delta/core/domain/usecase/usecase.dart';
import 'package:flutter_interngram_delta/features/auth/domain/repositories/auth_repository.dart';

class SignInFacebook extends UseCase<bool, NoParams> {
  final AuthRepository _repository;

  SignInFacebook(this._repository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) async {
    return await _repository.signInFacebook();
  }
}
