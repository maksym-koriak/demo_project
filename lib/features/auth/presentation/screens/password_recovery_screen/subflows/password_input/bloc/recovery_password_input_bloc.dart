import 'package:bloc/bloc.dart';
import 'package:flutter_interngram_delta/core/domain/failures/failures.dart';
import 'package:flutter_interngram_delta/core/domain/usecase/usecase.dart';
import 'package:flutter_interngram_delta/features/auth/domain/use_cases/recovery_update_password.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_interngram_delta/di/di_container.dart' as di;

part 'recovery_password_input_event.dart';

part 'recovery_password_input_state.dart';

part 'recovery_password_input_bloc.freezed.dart';

class RecoveryPasswordInputBloc
    extends Bloc<RecoveryPasswordInputEvent, RecoveryPasswordInputState> {
  final RecoveryUpdatePassword _updatePassword =
      di.serviceLocator<RecoveryUpdatePassword>();

  RecoveryPasswordInputBloc()
      : super(const RecoveryPasswordInputState.initial()) {
    on<RecoveryPasswordInputEvent>(
      (event, emit) async {
        await event.maybeWhen(
          submit: (String? email, String? phone, String password,
              String confirmPassword) async {
            emit(
              const RecoveryPasswordInputState.loading(),
            );
            final result = await _updatePassword(
              FourStringParams(email, phone, password, confirmPassword),
            );
            result.fold(
              (failure) {
                switch (failure.runtimeType) {
                  case PasswordWasUsedBeforeFailure:
                    {
                      emit(
                        const RecoveryPasswordInputState
                            .passwordUsedBeforeFailure(),
                      );
                      break;
                    }
                  default:
                    {
                      emit(
                        const RecoveryPasswordInputState.recoveryFailure(),
                      );
                    }
                }
              },
              (result) {
                emit(
                  const RecoveryPasswordInputState.recoverySuccess(),
                );
              },
            );
          },
          enableSubmit: () {
            emit(
              const RecoveryPasswordInputState.enabledSubmit(),
            );
          },
          disableSubmit: () {
            emit(
              const RecoveryPasswordInputState.disabledSubmit(),
            );
          },
          orElse: () {},
        );
      },
    );
  }
}
