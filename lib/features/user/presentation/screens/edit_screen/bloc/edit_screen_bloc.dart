import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:flutter_interngram_delta/core/domain/usecase/usecase.dart';
import 'package:flutter_interngram_delta/features/auth/domain/use_cases/validate_nickname.dart';
import 'package:flutter_interngram_delta/features/user/domain/use_cases/update_current_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_interngram_delta/di/di_container.dart' as di;

part 'edit_screen_event.dart';

part 'edit_screen_state.dart';

part 'edit_screen_bloc.freezed.dart';

class EditScreenBloc extends Bloc<EditScreenEvent, EditScreenState> {
  final ValidateNickname _validateNickname =
      di.serviceLocator<ValidateNickname>();
  final UpdateCurrentUser _updateCurrentUser =
      di.serviceLocator<UpdateCurrentUser>();

  EditScreenBloc() : super(const EditScreenState.initial()) {
    on<EditScreenEvent>(
      (event, emit) async {
        await event.when(
          trySaveChanges: (
            Uint8List? avatar,
            String? fullName,
            String nickname,
            String? city,
            String? bio,
          ) async {
            //TODO: implement saving changes
            final nicknameValidationResult = await _validateNickname(
              SingleStringParams(nickname),
            );
            await nicknameValidationResult.fold(
              (failure) {
                emit(
                  const EditScreenState.validationFailureNicknameExists(),
                );
              },
              (result) async {
                final result = await _updateCurrentUser(
                  UpdateUserParams(avatar, fullName, nickname, city, bio),
                );
                result.fold(
                  (failure) {
                    emit(
                      const EditScreenState.updateFailure(),
                    );
                  },
                  (result) {
                    emit(
                      const EditScreenState.updateSuccess(),
                    );
                  },
                );
              },
            );
          },
          enableSubmit: () {
            emit(const EditScreenState.enabledSubmit());
          },
          disableSubmit: () {
            emit(const EditScreenState.disabledSubmit());
          },
        );
      },
    );
  }
}
