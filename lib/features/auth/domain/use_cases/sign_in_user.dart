import 'package:dartz/dartz.dart';
import 'package:flutter_interngram_delta/core/domain/failures/failures.dart';
import 'package:flutter_interngram_delta/core/domain/usecase/usecase.dart';
import 'package:flutter_interngram_delta/features/auth/domain/repositories/auth_repository.dart';

class SignInUser extends UseCase<void, TwoStringParams> {
  final AuthRepository _repository;

  SignInUser(this._repository);

  @override
  Future<Either<Failure, void>> call(TwoStringParams params) async {
    return await _repository.signInUser(params.firstValue, params.secondValue);
  }
}
