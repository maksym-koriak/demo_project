import 'package:dartz/dartz.dart';
import 'package:flutter_interngram_delta/core/domain/failures/failures.dart';
import 'package:flutter_interngram_delta/core/domain/usecase/usecase.dart';
import 'package:flutter_interngram_delta/features/auth/domain/repositories/auth_repository.dart';

class AttemptAccess extends UseCase<void, NoParams> {
  final AuthRepository _repository;

  AttemptAccess(this._repository);

  @override
  Future<Either<Failure, void>> call(NoParams params) async {
    return await _repository.attemptAccess();
  }
}
