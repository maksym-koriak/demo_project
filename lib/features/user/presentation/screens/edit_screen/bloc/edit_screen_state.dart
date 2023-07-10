part of 'edit_screen_bloc.dart';

@freezed
class EditScreenState with _$EditScreenState {
  const factory EditScreenState.initial() = _Initial;

  const factory EditScreenState.enabledSubmit() = _EnabledSubmit;

  const factory EditScreenState.disabledSubmit() = _DisabledSubmit;

  const factory EditScreenState.validationSuccess(String email) =
      _ValidationSuccess;

  const factory EditScreenState.validationFailureNicknameExists() =
      _ValidationFailureNicknameExists;

  const factory EditScreenState.validationFailureNicknameIsNotValid() =
      _ValidationFailureNicknameIsNotValid;

  const factory EditScreenState.validationFailureUnknown() =
      _ValidationFailureUnknown;

  const factory EditScreenState.updateSuccess() = _UpdateSuccess;

  const factory EditScreenState.updateFailure() = _UpdateFailure;
}
