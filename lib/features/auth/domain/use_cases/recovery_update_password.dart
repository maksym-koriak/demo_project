import 'package:dartz/dartz.dart';
import 'package:flutter_interngram_delta/core/domain/failures/failures.dart';
import 'package:flutter_interngram_delta/core/domain/usecase/usecase.dart';
import 'package:flutter_interngram_delta/features/auth/domain/repositories/auth_repository.dart';

class RecoveryUpdatePassword extends UseCase<void, FourStringParams> {
  final AuthRepository _repository;

  RecoveryUpdatePassword(this._repository);

  @override
  Future<Either<Failure, void>> call(FourStringParams params) async {
    return await _repository.recoveryUpdatePassword(
      params.firstValue,
      params.secondValue,
      params.thirdValue,
      params.fourthValue,
    );
  }
}
