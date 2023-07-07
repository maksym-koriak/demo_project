part of 'edit_screen_bloc.dart';

@freezed
class EditScreenEvent with _$EditScreenEvent {
  const factory EditScreenEvent.enableSubmit() = _EnableSubmit;

  const factory EditScreenEvent.disableSubmit() = _DisableSubmit;

  const factory EditScreenEvent.trySaveChanges(
    Uint8List? avatar,
    String? fullName,
    String nickname,
    String? city,
    String? bio,
  ) = _TrySaveChanges;
}
