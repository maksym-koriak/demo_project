import 'package:dartz/dartz.dart';
import 'package:flutter_interngram_delta/core/domain/failures/failures.dart';
import 'package:flutter_interngram_delta/core/domain/usecase/usecase.dart';
import 'package:flutter_interngram_delta/features/auth/domain/repositories/auth_repository.dart';

class ValidateVerificationCode extends UseCase<bool, TwoStringParams> {
  final AuthRepository _repository;

  ValidateVerificationCode(this._repository);

  @override
  Future<Either<Failure, bool>> call(TwoStringParams params) async {
    return await _repository.validateVerificationCode(
        params.firstValue, params.secondValue);
  }
}
