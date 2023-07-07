// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enableSubmit,
    required TResult Function() disableSubmit,
    required TResult Function(Uint8List? avatar, String? fullName,
            String nickname, String? city, String? bio)
        trySaveChanges,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enableSubmit,
    TResult? Function()? disableSubmit,
    TResult? Function(Uint8List? avatar, String? fullName, String nickname,
            String? city, String? bio)?
        trySaveChanges,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enableSubmit,
    TResult Function()? disableSubmit,
    TResult Function(Uint8List? avatar, String? fullName, String nickname,
            String? city, String? bio)?
        trySaveChanges,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnableSubmit value) enableSubmit,
    required TResult Function(_DisableSubmit value) disableSubmit,
    required TResult Function(_TrySaveChanges value) trySaveChanges,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnableSubmit value)? enableSubmit,
    TResult? Function(_DisableSubmit value)? disableSubmit,
    TResult? Function(_TrySaveChanges value)? trySaveChanges,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnableSubmit value)? enableSubmit,
    TResult Function(_DisableSubmit value)? disableSubmit,
    TResult Function(_TrySaveChanges value)? trySaveChanges,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditScreenEventCopyWith<$Res> {
  factory $EditScreenEventCopyWith(
          EditScreenEvent value, $Res Function(EditScreenEvent) then) =
      _$EditScreenEventCopyWithImpl<$Res, EditScreenEvent>;
}

/// @nodoc
class _$EditScreenEventCopyWithImpl<$Res, $Val extends EditScreenEvent>
    implements $EditScreenEventCopyWith<$Res> {
  _$EditScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EnableSubmitCopyWith<$Res> {
  factory _$$_EnableSubmitCopyWith(
          _$_EnableSubmit value, $Res Function(_$_EnableSubmit) then) =
      __$$_EnableSubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EnableSubmitCopyWithImpl<$Res>
    extends _$EditScreenEventCopyWithImpl<$Res, _$_EnableSubmit>
    implements _$$_EnableSubmitCopyWith<$Res> {
  __$$_EnableSubmitCopyWithImpl(
      _$_EnableSubmit _value, $Res Function(_$_EnableSubmit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EnableSubmit implements _EnableSubmit {
  const _$_EnableSubmit();

  @override
  String toString() {
    return 'EditScreenEvent.enableSubmit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EnableSubmit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enableSubmit,
    required TResult Function() disableSubmit,
    required TResult Function(Uint8List? avatar, String? fullName,
            String nickname, String? city, String? bio)
        trySaveChanges,
  }) {
    return enableSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enableSubmit,
    TResult? Function()? disableSubmit,
    TResult? Function(Uint8List? avatar, String? fullName, String nickname,
            String? city, String? bio)?
        trySaveChanges,
  }) {
    return enableSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enableSubmit,
    TResult Function()? disableSubmit,
    TResult Function(Uint8List? avatar, String? fullName, String nickname,
            String? city, String? bio)?
        trySaveChanges,
    required TResult orElse(),
  }) {
    if (enableSubmit != null) {
      return enableSubmit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnableSubmit value) enableSubmit,
    required TResult Function(_DisableSubmit value) disableSubmit,
    required TResult Function(_TrySaveChanges value) trySaveChanges,
  }) {
    return enableSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnableSubmit value)? enableSubmit,
    TResult? Function(_DisableSubmit value)? disableSubmit,
    TResult? Function(_TrySaveChanges value)? trySaveChanges,
  }) {
    return enableSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnableSubmit value)? enableSubmit,
    TResult Function(_DisableSubmit value)? disableSubmit,
    TResult Function(_TrySaveChanges value)? trySaveChanges,
    required TResult orElse(),
  }) {
    if (enableSubmit != null) {
      return enableSubmit(this);
    }
    return orElse();
  }
}

abstract class _EnableSubmit implements EditScreenEvent {
  const factory _EnableSubmit() = _$_EnableSubmit;
}

/// @nodoc
abstract class _$$_DisableSubmitCopyWith<$Res> {
  factory _$$_DisableSubmitCopyWith(
          _$_DisableSubmit value, $Res Function(_$_DisableSubmit) then) =
      __$$_DisableSubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DisableSubmitCopyWithImpl<$Res>
    extends _$EditScreenEventCopyWithImpl<$Res, _$_DisableSubmit>
    implements _$$_DisableSubmitCopyWith<$Res> {
  __$$_DisableSubmitCopyWithImpl(
      _$_DisableSubmit _value, $Res Function(_$_DisableSubmit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DisableSubmit implements _DisableSubmit {
  const _$_DisableSubmit();

  @override
  String toString() {
    return 'EditScreenEvent.disableSubmit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DisableSubmit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enableSubmit,
    required TResult Function() disableSubmit,
    required TResult Function(Uint8List? avatar, String? fullName,
            String nickname, String? city, String? bio)
        trySaveChanges,
  }) {
    return disableSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enableSubmit,
    TResult? Function()? disableSubmit,
    TResult? Function(Uint8List? avatar, String? fullName, String nickname,
            String? city, String? bio)?
        trySaveChanges,
  }) {
    return disableSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enableSubmit,
    TResult Function()? disableSubmit,
    TResult Function(Uint8List? avatar, String? fullName, String nickname,
            String? city, String? bio)?
        trySaveChanges,
    required TResult orElse(),
  }) {
    if (disableSubmit != null) {
      return disableSubmit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnableSubmit value) enableSubmit,
    required TResult Function(_DisableSubmit value) disableSubmit,
    required TResult Function(_TrySaveChanges value) trySaveChanges,
  }) {
    return disableSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnableSubmit value)? enableSubmit,
    TResult? Function(_DisableSubmit value)? disableSubmit,
    TResult? Function(_TrySaveChanges value)? trySaveChanges,
  }) {
    return disableSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnableSubmit value)? enableSubmit,
    TResult Function(_DisableSubmit value)? disableSubmit,
    TResult Function(_TrySaveChanges value)? trySaveChanges,
    required TResult orElse(),
  }) {
    if (disableSubmit != null) {
      return disableSubmit(this);
    }
    return orElse();
  }
}

abstract class _DisableSubmit implements EditScreenEvent {
  const factory _DisableSubmit() = _$_DisableSubmit;
}

/// @nodoc
abstract class _$$_TrySaveChangesCopyWith<$Res> {
  factory _$$_TrySaveChangesCopyWith(
          _$_TrySaveChanges value, $Res Function(_$_TrySaveChanges) then) =
      __$$_TrySaveChangesCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Uint8List? avatar,
      String? fullName,
      String nickname,
      String? city,
      String? bio});
}

/// @nodoc
class __$$_TrySaveChangesCopyWithImpl<$Res>
    extends _$EditScreenEventCopyWithImpl<$Res, _$_TrySaveChanges>
    implements _$$_TrySaveChangesCopyWith<$Res> {
  __$$_TrySaveChangesCopyWithImpl(
      _$_TrySaveChanges _value, $Res Function(_$_TrySaveChanges) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? fullName = freezed,
    Object? nickname = null,
    Object? city = freezed,
    Object? bio = freezed,
  }) {
    return _then(_$_TrySaveChanges(
      freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TrySaveChanges implements _TrySaveChanges {
  const _$_TrySaveChanges(
      this.avatar, this.fullName, this.nickname, this.city, this.bio);

  @override
  final Uint8List? avatar;
  @override
  final String? fullName;
  @override
  final String nickname;
  @override
  final String? city;
  @override
  final String? bio;

  @override
  String toString() {
    return 'EditScreenEvent.trySaveChanges(avatar: $avatar, fullName: $fullName, nickname: $nickname, city: $city, bio: $bio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrySaveChanges &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(avatar),
      fullName,
      nickname,
      city,
      bio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrySaveChangesCopyWith<_$_TrySaveChanges> get copyWith =>
      __$$_TrySaveChangesCopyWithImpl<_$_TrySaveChanges>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enableSubmit,
    required TResult Function() disableSubmit,
    required TResult Function(Uint8List? avatar, String? fullName,
            String nickname, String? city, String? bio)
        trySaveChanges,
  }) {
    return trySaveChanges(avatar, fullName, nickname, city, bio);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enableSubmit,
    TResult? Function()? disableSubmit,
    TResult? Function(Uint8List? avatar, String? fullName, String nickname,
            String? city, String? bio)?
        trySaveChanges,
  }) {
    return trySaveChanges?.call(avatar, fullName, nickname, city, bio);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enableSubmit,
    TResult Function()? disableSubmit,
    TResult Function(Uint8List? avatar, String? fullName, String nickname,
            String? city, String? bio)?
        trySaveChanges,
    required TResult orElse(),
  }) {
    if (trySaveChanges != null) {
      return trySaveChanges(avatar, fullName, nickname, city, bio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnableSubmit value) enableSubmit,
    required TResult Function(_DisableSubmit value) disableSubmit,
    required TResult Function(_TrySaveChanges value) trySaveChanges,
  }) {
    return trySaveChanges(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnableSubmit value)? enableSubmit,
    TResult? Function(_DisableSubmit value)? disableSubmit,
    TResult? Function(_TrySaveChanges value)? trySaveChanges,
  }) {
    return trySaveChanges?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnableSubmit value)? enableSubmit,
    TResult Function(_DisableSubmit value)? disableSubmit,
    TResult Function(_TrySaveChanges value)? trySaveChanges,
    required TResult orElse(),
  }) {
    if (trySaveChanges != null) {
      return trySaveChanges(this);
    }
    return orElse();
  }
}

abstract class _TrySaveChanges implements EditScreenEvent {
  const factory _TrySaveChanges(
      final Uint8List? avatar,
      final String? fullName,
      final String nickname,
      final String? city,
      final String? bio) = _$_TrySaveChanges;

  Uint8List? get avatar;
  String? get fullName;
  String get nickname;
  String? get city;
  String? get bio;
  @JsonKey(ignore: true)
  _$$_TrySaveChangesCopyWith<_$_TrySaveChanges> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function(String email) validationSuccess,
    required TResult Function() validationFailureNicknameExists,
    required TResult Function() validationFailureNicknameIsNotValid,
    required TResult Function() validationFailureUnknown,
    required TResult Function() updateSuccess,
    required TResult Function() updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String email)? validationSuccess,
    TResult? Function()? validationFailureNicknameExists,
    TResult? Function()? validationFailureNicknameIsNotValid,
    TResult? Function()? validationFailureUnknown,
    TResult? Function()? updateSuccess,
    TResult? Function()? updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String email)? validationSuccess,
    TResult Function()? validationFailureNicknameExists,
    TResult Function()? validationFailureNicknameIsNotValid,
    TResult Function()? validationFailureUnknown,
    TResult Function()? updateSuccess,
    TResult Function()? updateFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EnabledSubmit value) enabledSubmit,
    required TResult Function(_DisabledSubmit value) disabledSubmit,
    required TResult Function(_ValidationSuccess value) validationSuccess,
    required TResult Function(_ValidationFailureNicknameExists value)
        validationFailureNicknameExists,
    required TResult Function(_ValidationFailureNicknameIsNotValid value)
        validationFailureNicknameIsNotValid,
    required TResult Function(_ValidationFailureUnknown value)
        validationFailureUnknown,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationSuccess value)? validationSuccess,
    TResult? Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult? Function(_ValidationFailureNicknameIsNotValid value)?
        validationFailureNicknameIsNotValid,
    TResult? Function(_ValidationFailureUnknown value)?
        validationFailureUnknown,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateFailure value)? updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationSuccess value)? validationSuccess,
    TResult Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult Function(_ValidationFailureNicknameIsNotValid value)?
        validationFailureNicknameIsNotValid,
    TResult Function(_ValidationFailureUnknown value)? validationFailureUnknown,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditScreenStateCopyWith<$Res> {
  factory $EditScreenStateCopyWith(
          EditScreenState value, $Res Function(EditScreenState) then) =
      _$EditScreenStateCopyWithImpl<$Res, EditScreenState>;
}

/// @nodoc
class _$EditScreenStateCopyWithImpl<$Res, $Val extends EditScreenState>
    implements $EditScreenStateCopyWith<$Res> {
  _$EditScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$EditScreenStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'EditScreenState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function(String email) validationSuccess,
    required TResult Function() validationFailureNicknameExists,
    required TResult Function() validationFailureNicknameIsNotValid,
    required TResult Function() validationFailureUnknown,
    required TResult Function() updateSuccess,
    required TResult Function() updateFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String email)? validationSuccess,
    TResult? Function()? validationFailureNicknameExists,
    TResult? Function()? validationFailureNicknameIsNotValid,
    TResult? Function()? validationFailureUnknown,
    TResult? Function()? updateSuccess,
    TResult? Function()? updateFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String email)? validationSuccess,
    TResult Function()? validationFailureNicknameExists,
    TResult Function()? validationFailureNicknameIsNotValid,
    TResult Function()? validationFailureUnknown,
    TResult Function()? updateSuccess,
    TResult Function()? updateFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EnabledSubmit value) enabledSubmit,
    required TResult Function(_DisabledSubmit value) disabledSubmit,
    required TResult Function(_ValidationSuccess value) validationSuccess,
    required TResult Function(_ValidationFailureNicknameExists value)
        validationFailureNicknameExists,
    required TResult Function(_ValidationFailureNicknameIsNotValid value)
        validationFailureNicknameIsNotValid,
    required TResult Function(_ValidationFailureUnknown value)
        validationFailureUnknown,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationSuccess value)? validationSuccess,
    TResult? Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult? Function(_ValidationFailureNicknameIsNotValid value)?
        validationFailureNicknameIsNotValid,
    TResult? Function(_ValidationFailureUnknown value)?
        validationFailureUnknown,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateFailure value)? updateFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationSuccess value)? validationSuccess,
    TResult Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult Function(_ValidationFailureNicknameIsNotValid value)?
        validationFailureNicknameIsNotValid,
    TResult Function(_ValidationFailureUnknown value)? validationFailureUnknown,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EditScreenState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_EnabledSubmitCopyWith<$Res> {
  factory _$$_EnabledSubmitCopyWith(
          _$_EnabledSubmit value, $Res Function(_$_EnabledSubmit) then) =
      __$$_EnabledSubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EnabledSubmitCopyWithImpl<$Res>
    extends _$EditScreenStateCopyWithImpl<$Res, _$_EnabledSubmit>
    implements _$$_EnabledSubmitCopyWith<$Res> {
  __$$_EnabledSubmitCopyWithImpl(
      _$_EnabledSubmit _value, $Res Function(_$_EnabledSubmit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EnabledSubmit implements _EnabledSubmit {
  const _$_EnabledSubmit();

  @override
  String toString() {
    return 'EditScreenState.enabledSubmit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EnabledSubmit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function(String email) validationSuccess,
    required TResult Function() validationFailureNicknameExists,
    required TResult Function() validationFailureNicknameIsNotValid,
    required TResult Function() validationFailureUnknown,
    required TResult Function() updateSuccess,
    required TResult Function() updateFailure,
  }) {
    return enabledSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String email)? validationSuccess,
    TResult? Function()? validationFailureNicknameExists,
    TResult? Function()? validationFailureNicknameIsNotValid,
    TResult? Function()? validationFailureUnknown,
    TResult? Function()? updateSuccess,
    TResult? Function()? updateFailure,
  }) {
    return enabledSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String email)? validationSuccess,
    TResult Function()? validationFailureNicknameExists,
    TResult Function()? validationFailureNicknameIsNotValid,
    TResult Function()? validationFailureUnknown,
    TResult Function()? updateSuccess,
    TResult Function()? updateFailure,
    required TResult orElse(),
  }) {
    if (enabledSubmit != null) {
      return enabledSubmit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EnabledSubmit value) enabledSubmit,
    required TResult Function(_DisabledSubmit value) disabledSubmit,
    required TResult Function(_ValidationSuccess value) validationSuccess,
    required TResult Function(_ValidationFailureNicknameExists value)
        validationFailureNicknameExists,
    required TResult Function(_ValidationFailureNicknameIsNotValid value)
        validationFailureNicknameIsNotValid,
    required TResult Function(_ValidationFailureUnknown value)
        validationFailureUnknown,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return enabledSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationSuccess value)? validationSuccess,
    TResult? Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult? Function(_ValidationFailureNicknameIsNotValid value)?
        validationFailureNicknameIsNotValid,
    TResult? Function(_ValidationFailureUnknown value)?
        validationFailureUnknown,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateFailure value)? updateFailure,
  }) {
    return enabledSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationSuccess value)? validationSuccess,
    TResult Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult Function(_ValidationFailureNicknameIsNotValid value)?
        validationFailureNicknameIsNotValid,
    TResult Function(_ValidationFailureUnknown value)? validationFailureUnknown,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (enabledSubmit != null) {
      return enabledSubmit(this);
    }
    return orElse();
  }
}

abstract class _EnabledSubmit implements EditScreenState {
  const factory _EnabledSubmit() = _$_EnabledSubmit;
}

/// @nodoc
abstract class _$$_DisabledSubmitCopyWith<$Res> {
  factory _$$_DisabledSubmitCopyWith(
          _$_DisabledSubmit value, $Res Function(_$_DisabledSubmit) then) =
      __$$_DisabledSubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DisabledSubmitCopyWithImpl<$Res>
    extends _$EditScreenStateCopyWithImpl<$Res, _$_DisabledSubmit>
    implements _$$_DisabledSubmitCopyWith<$Res> {
  __$$_DisabledSubmitCopyWithImpl(
      _$_DisabledSubmit _value, $Res Function(_$_DisabledSubmit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DisabledSubmit implements _DisabledSubmit {
  const _$_DisabledSubmit();

  @override
  String toString() {
    return 'EditScreenState.disabledSubmit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DisabledSubmit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function(String email) validationSuccess,
    required TResult Function() validationFailureNicknameExists,
    required TResult Function() validationFailureNicknameIsNotValid,
    required TResult Function() validationFailureUnknown,
    required TResult Function() updateSuccess,
    required TResult Function() updateFailure,
  }) {
    return disabledSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String email)? validationSuccess,
    TResult? Function()? validationFailureNicknameExists,
    TResult? Function()? validationFailureNicknameIsNotValid,
    TResult? Function()? validationFailureUnknown,
    TResult? Function()? updateSuccess,
    TResult? Function()? updateFailure,
  }) {
    return disabledSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String email)? validationSuccess,
    TResult Function()? validationFailureNicknameExists,
    TResult Function()? validationFailureNicknameIsNotValid,
    TResult Function()? validationFailureUnknown,
    TResult Function()? updateSuccess,
    TResult Function()? updateFailure,
    required TResult orElse(),
  }) {
    if (disabledSubmit != null) {
      return disabledSubmit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EnabledSubmit value) enabledSubmit,
    required TResult Function(_DisabledSubmit value) disabledSubmit,
    required TResult Function(_ValidationSuccess value) validationSuccess,
    required TResult Function(_ValidationFailureNicknameExists value)
        validationFailureNicknameExists,
    required TResult Function(_ValidationFailureNicknameIsNotValid value)
        validationFailureNicknameIsNotValid,
    required TResult Function(_ValidationFailureUnknown value)
        validationFailureUnknown,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return disabledSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationSuccess value)? validationSuccess,
    TResult? Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult? Function(_ValidationFailureNicknameIsNotValid value)?
        validationFailureNicknameIsNotValid,
    TResult? Function(_ValidationFailureUnknown value)?
        validationFailureUnknown,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateFailure value)? updateFailure,
  }) {
    return disabledSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationSuccess value)? validationSuccess,
    TResult Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult Function(_ValidationFailureNicknameIsNotValid value)?
        validationFailureNicknameIsNotValid,
    TResult Function(_ValidationFailureUnknown value)? validationFailureUnknown,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (disabledSubmit != null) {
      return disabledSubmit(this);
    }
    return orElse();
  }
}

abstract class _DisabledSubmit implements EditScreenState {
  const factory _DisabledSubmit() = _$_DisabledSubmit;
}

/// @nodoc
abstract class _$$_ValidationSuccessCopyWith<$Res> {
  factory _$$_ValidationSuccessCopyWith(_$_ValidationSuccess value,
          $Res Function(_$_ValidationSuccess) then) =
      __$$_ValidationSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_ValidationSuccessCopyWithImpl<$Res>
    extends _$EditScreenStateCopyWithImpl<$Res, _$_ValidationSuccess>
    implements _$$_ValidationSuccessCopyWith<$Res> {
  __$$_ValidationSuccessCopyWithImpl(
      _$_ValidationSuccess _value, $Res Function(_$_ValidationSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_ValidationSuccess(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ValidationSuccess implements _ValidationSuccess {
  const _$_ValidationSuccess(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'EditScreenState.validationSuccess(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidationSuccess &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidationSuccessCopyWith<_$_ValidationSuccess> get copyWith =>
      __$$_ValidationSuccessCopyWithImpl<_$_ValidationSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function(String email) validationSuccess,
    required TResult Function() validationFailureNicknameExists,
    required TResult Function() validationFailureNicknameIsNotValid,
    required TResult Function() validationFailureUnknown,
    required TResult Function() updateSuccess,
    required TResult Function() updateFailure,
  }) {
    return validationSuccess(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String email)? validationSuccess,
    TResult? Function()? validationFailureNicknameExists,
    TResult? Function()? validationFailureNicknameIsNotValid,
    TResult? Function()? validationFailureUnknown,
    TResult? Function()? updateSuccess,
    TResult? Function()? updateFailure,
  }) {
    return validationSuccess?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String email)? validationSuccess,
    TResult Function()? validationFailureNicknameExists,
    TResult Function()? validationFailureNicknameIsNotValid,
    TResult Function()? validationFailureUnknown,
    TResult Function()? updateSuccess,
    TResult Function()? updateFailure,
    required TResult orElse(),
  }) {
    if (validationSuccess != null) {
      return validationSuccess(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EnabledSubmit value) enabledSubmit,
    required TResult Function(_DisabledSubmit value) disabledSubmit,
    required TResult Function(_ValidationSuccess value) validationSuccess,
    required TResult Function(_ValidationFailureNicknameExists value)
        validationFailureNicknameExists,
    required TResult Function(_ValidationFailureNicknameIsNotValid value)
        validationFailureNicknameIsNotValid,
    required TResult Function(_ValidationFailureUnknown value)
        validationFailureUnknown,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return validationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationSuccess value)? validationSuccess,
    TResult? Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult? Function(_ValidationFailureNicknameIsNotValid value)?
        validationFailureNicknameIsNotValid,
    TResult? Function(_ValidationFailureUnknown value)?
        validationFailureUnknown,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateFailure value)? updateFailure,
  }) {
    return validationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationSuccess value)? validationSuccess,
    TResult Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult Function(_ValidationFailureNicknameIsNotValid value)?
        validationFailureNicknameIsNotValid,
    TResult Function(_ValidationFailureUnknown value)? validationFailureUnknown,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (validationSuccess != null) {
      return validationSuccess(this);
    }
    return orElse();
  }
}

abstract class _ValidationSuccess implements EditScreenState {
  const factory _ValidationSuccess(final String email) = _$_ValidationSuccess;

  String get email;
  @JsonKey(ignore: true)
  _$$_ValidationSuccessCopyWith<_$_ValidationSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValidationFailureNicknameExistsCopyWith<$Res> {
  factory _$$_ValidationFailureNicknameExistsCopyWith(
          _$_ValidationFailureNicknameExists value,
          $Res Function(_$_ValidationFailureNicknameExists) then) =
      __$$_ValidationFailureNicknameExistsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ValidationFailureNicknameExistsCopyWithImpl<$Res>
    extends _$EditScreenStateCopyWithImpl<$Res,
        _$_ValidationFailureNicknameExists>
    implements _$$_ValidationFailureNicknameExistsCopyWith<$Res> {
  __$$_ValidationFailureNicknameExistsCopyWithImpl(
      _$_ValidationFailureNicknameExists _value,
      $Res Function(_$_ValidationFailureNicknameExists) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ValidationFailureNicknameExists
    implements _ValidationFailureNicknameExists {
  const _$_ValidationFailureNicknameExists();

  @override
  String toString() {
    return 'EditScreenState.validationFailureNicknameExists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidationFailureNicknameExists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function(String email) validationSuccess,
    required TResult Function() validationFailureNicknameExists,
    required TResult Function() validationFailureNicknameIsNotValid,
    required TResult Function() validationFailureUnknown,
    required TResult Function() updateSuccess,
    required TResult Function() updateFailure,
  }) {
    return validationFailureNicknameExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String email)? validationSuccess,
    TResult? Function()? validationFailureNicknameExists,
    TResult? Function()? validationFailureNicknameIsNotValid,
    TResult? Function()? validationFailureUnknown,
    TResult? Function()? updateSuccess,
    TResult? Function()? updateFailure,
  }) {
    return validationFailureNicknameExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String email)? validationSuccess,
    TResult Function()? validationFailureNicknameExists,
    TResult Function()? validationFailureNicknameIsNotValid,
    TResult Function()? validationFailureUnknown,
    TResult Function()? updateSuccess,
    TResult Function()? updateFailure,
    required TResult orElse(),
  }) {
    if (validationFailureNicknameExists != null) {
      return validationFailureNicknameExists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EnabledSubmit value) enabledSubmit,
    required TResult Function(_DisabledSubmit value) disabledSubmit,
    required TResult Function(_ValidationSuccess value) validationSuccess,
    required TResult Function(_ValidationFailureNicknameExists value)
        validationFailureNicknameExists,
    required TResult Function(_ValidationFailureNicknameIsNotValid value)
        validationFailureNicknameIsNotValid,
    required TResult Function(_ValidationFailureUnknown value)
        validationFailureUnknown,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return validationFailureNicknameExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationSuccess value)? validationSuccess,
    TResult? Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult? Function(_ValidationFailureNicknameIsNotValid value)?
        validationFailureNicknameIsNotValid,
    TResult? Function(_ValidationFailureUnknown value)?
        validationFailureUnknown,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateFailure value)? updateFailure,
  }) {
    return validationFailureNicknameExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationSuccess value)? validationSuccess,
    TResult Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult Function(_ValidationFailureNicknameIsNotValid value)?
        validationFailureNicknameIsNotValid,
    TResult Function(_ValidationFailureUnknown value)? validationFailureUnknown,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (validationFailureNicknameExists != null) {
      return validationFailureNicknameExists(this);
    }
    return orElse();
  }
}

abstract class _ValidationFailureNicknameExists implements EditScreenState {
  const factory _ValidationFailureNicknameExists() =
      _$_ValidationFailureNicknameExists;
}

/// @nodoc
abstract class _$$_ValidationFailureNicknameIsNotValidCopyWith<$Res> {
  factory _$$_ValidationFailureNicknameIsNotValidCopyWith(
          _$_ValidationFailureNicknameIsNotValid value,
          $Res Function(_$_ValidationFailureNicknameIsNotValid) then) =
      __$$_ValidationFailureNicknameIsNotValidCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ValidationFailureNicknameIsNotValidCopyWithImpl<$Res>
    extends _$EditScreenStateCopyWithImpl<$Res,
        _$_ValidationFailureNicknameIsNotValid>
    implements _$$_ValidationFailureNicknameIsNotValidCopyWith<$Res> {
  __$$_ValidationFailureNicknameIsNotValidCopyWithImpl(
      _$_ValidationFailureNicknameIsNotValid _value,
      $Res Function(_$_ValidationFailureNicknameIsNotValid) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ValidationFailureNicknameIsNotValid
    implements _ValidationFailureNicknameIsNotValid {
  const _$_ValidationFailureNicknameIsNotValid();

  @override
  String toString() {
    return 'EditScreenState.validationFailureNicknameIsNotValid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidationFailureNicknameIsNotValid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function(String email) validationSuccess,
    required TResult Function() validationFailureNicknameExists,
    required TResult Function() validationFailureNicknameIsNotValid,
    required TResult Function() validationFailureUnknown,
    required TResult Function() updateSuccess,
    required TResult Function() updateFailure,
  }) {
    return validationFailureNicknameIsNotValid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String email)? validationSuccess,
    TResult? Function()? validationFailureNicknameExists,
    TResult? Function()? validationFailureNicknameIsNotValid,
    TResult? Function()? validationFailureUnknown,
    TResult? Function()? updateSuccess,
    TResult? Function()? updateFailure,
  }) {
    return validationFailureNicknameIsNotValid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String email)? validationSuccess,
    TResult Function()? validationFailureNicknameExists,
    TResult Function()? validationFailureNicknameIsNotValid,
    TResult Function()? validationFailureUnknown,
    TResult Function()? updateSuccess,
    TResult Function()? updateFailure,
    required TResult orElse(),
  }) {
    if (validationFailureNicknameIsNotValid != null) {
      return validationFailureNicknameIsNotValid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EnabledSubmit value) enabledSubmit,
    required TResult Function(_DisabledSubmit value) disabledSubmit,
    required TResult Function(_ValidationSuccess value) validationSuccess,
    required TResult Function(_ValidationFailureNicknameExists value)
        validationFailureNicknameExists,
    required TResult Function(_ValidationFailureNicknameIsNotValid value)
        validationFailureNicknameIsNotValid,
    required TResult Function(_ValidationFailureUnknown value)
        validationFailureUnknown,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return validationFailureNicknameIsNotValid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationSuccess value)? validationSuccess,
    TResult? Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult? Function(_ValidationFailureNicknameIsNotValid value)?
        validationFailureNicknameIsNotValid,
    TResult? Function(_ValidationFailureUnknown value)?
        validationFailureUnknown,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateFailure value)? updateFailure,
  }) {
    return validationFailureNicknameIsNotValid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationSuccess value)? validationSuccess,
    TResult Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult Function(_ValidationFailureNicknameIsNotValid value)?
        validationFailureNicknameIsNotValid,
    TResult Function(_ValidationFailureUnknown value)? validationFailureUnknown,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (validationFailureNicknameIsNotValid != null) {
      return validationFailureNicknameIsNotValid(this);
    }
    return orElse();
  }
}

abstract class _ValidationFailureNicknameIsNotValid implements EditScreenState {
  const factory _ValidationFailureNicknameIsNotValid() =
      _$_ValidationFailureNicknameIsNotValid;
}

/// @nodoc
abstract class _$$_ValidationFailureUnknownCopyWith<$Res> {
  factory _$$_ValidationFailureUnknownCopyWith(
          _$_ValidationFailureUnknown value,
          $Res Function(_$_ValidationFailureUnknown) then) =
      __$$_ValidationFailureUnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ValidationFailureUnknownCopyWithImpl<$Res>
    extends _$EditScreenStateCopyWithImpl<$Res, _$_ValidationFailureUnknown>
    implements _$$_ValidationFailureUnknownCopyWith<$Res> {
  __$$_ValidationFailureUnknownCopyWithImpl(_$_ValidationFailureUnknown _value,
      $Res Function(_$_ValidationFailureUnknown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ValidationFailureUnknown implements _ValidationFailureUnknown {
  const _$_ValidationFailureUnknown();

  @override
  String toString() {
    return 'EditScreenState.validationFailureUnknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidationFailureUnknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function(String email) validationSuccess,
    required TResult Function() validationFailureNicknameExists,
    required TResult Function() validationFailureNicknameIsNotValid,
    required TResult Function() validationFailureUnknown,
    required TResult Function() updateSuccess,
    required TResult Function() updateFailure,
  }) {
    return validationFailureUnknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String email)? validationSuccess,
    TResult? Function()? validationFailureNicknameExists,
    TResult? Function()? validationFailureNicknameIsNotValid,
    TResult? Function()? validationFailureUnknown,
    TResult? Function()? updateSuccess,
    TResult? Function()? updateFailure,
  }) {
    return validationFailureUnknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String email)? validationSuccess,
    TResult Function()? validationFailureNicknameExists,
    TResult Function()? validationFailureNicknameIsNotValid,
    TResult Function()? validationFailureUnknown,
    TResult Function()? updateSuccess,
    TResult Function()? updateFailure,
    required TResult orElse(),
  }) {
    if (validationFailureUnknown != null) {
      return validationFailureUnknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EnabledSubmit value) enabledSubmit,
    required TResult Function(_DisabledSubmit value) disabledSubmit,
    required TResult Function(_ValidationSuccess value) validationSuccess,
    required TResult Function(_ValidationFailureNicknameExists value)
        validationFailureNicknameExists,
    required TResult Function(_ValidationFailureNicknameIsNotValid value)
        validationFailureNicknameIsNotValid,
    required TResult Function(_ValidationFailureUnknown value)
        validationFailureUnknown,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return validationFailureUnknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationSuccess value)? validationSuccess,
    TResult? Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult? Function(_ValidationFailureNicknameIsNotValid value)?
        validationFailureNicknameIsNotValid,
    TResult? Function(_ValidationFailureUnknown value)?
        validationFailureUnknown,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateFailure value)? updateFailure,
  }) {
    return validationFailureUnknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationSuccess value)? validationSuccess,
    TResult Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult Function(_ValidationFailureNicknameIsNotValid value)?
        validationFailureNicknameIsNotValid,
    TResult Function(_ValidationFailureUnknown value)? validationFailureUnknown,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (validationFailureUnknown != null) {
      return validationFailureUnknown(this);
    }
    return orElse();
  }
}

abstract class _ValidationFailureUnknown implements EditScreenState {
  const factory _ValidationFailureUnknown() = _$_ValidationFailureUnknown;
}

/// @nodoc
abstract class _$$_UpdateSuccessCopyWith<$Res> {
  factory _$$_UpdateSuccessCopyWith(
          _$_UpdateSuccess value, $Res Function(_$_UpdateSuccess) then) =
      __$$_UpdateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateSuccessCopyWithImpl<$Res>
    extends _$EditScreenStateCopyWithImpl<$Res, _$_UpdateSuccess>
    implements _$$_UpdateSuccessCopyWith<$Res> {
  __$$_UpdateSuccessCopyWithImpl(
      _$_UpdateSuccess _value, $Res Function(_$_UpdateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UpdateSuccess implements _UpdateSuccess {
  const _$_UpdateSuccess();

  @override
  String toString() {
    return 'EditScreenState.updateSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function(String email) validationSuccess,
    required TResult Function() validationFailureNicknameExists,
    required TResult Function() validationFailureNicknameIsNotValid,
    required TResult Function() validationFailureUnknown,
    required TResult Function() updateSuccess,
    required TResult Function() updateFailure,
  }) {
    return updateSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String email)? validationSuccess,
    TResult? Function()? validationFailureNicknameExists,
    TResult? Function()? validationFailureNicknameIsNotValid,
    TResult? Function()? validationFailureUnknown,
    TResult? Function()? updateSuccess,
    TResult? Function()? updateFailure,
  }) {
    return updateSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String email)? validationSuccess,
    TResult Function()? validationFailureNicknameExists,
    TResult Function()? validationFailureNicknameIsNotValid,
    TResult Function()? validationFailureUnknown,
    TResult Function()? updateSuccess,
    TResult Function()? updateFailure,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EnabledSubmit value) enabledSubmit,
    required TResult Function(_DisabledSubmit value) disabledSubmit,
    required TResult Function(_ValidationSuccess value) validationSuccess,
    required TResult Function(_ValidationFailureNicknameExists value)
        validationFailureNicknameExists,
    required TResult Function(_ValidationFailureNicknameIsNotValid value)
        validationFailureNicknameIsNotValid,
    required TResult Function(_ValidationFailureUnknown value)
        validationFailureUnknown,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return updateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationSuccess value)? validationSuccess,
    TResult? Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult? Function(_ValidationFailureNicknameIsNotValid value)?
        validationFailureNicknameIsNotValid,
    TResult? Function(_ValidationFailureUnknown value)?
        validationFailureUnknown,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateFailure value)? updateFailure,
  }) {
    return updateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationSuccess value)? validationSuccess,
    TResult Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult Function(_ValidationFailureNicknameIsNotValid value)?
        validationFailureNicknameIsNotValid,
    TResult Function(_ValidationFailureUnknown value)? validationFailureUnknown,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateSuccess implements EditScreenState {
  const factory _UpdateSuccess() = _$_UpdateSuccess;
}

/// @nodoc
abstract class _$$_UpdateFailureCopyWith<$Res> {
  factory _$$_UpdateFailureCopyWith(
          _$_UpdateFailure value, $Res Function(_$_UpdateFailure) then) =
      __$$_UpdateFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateFailureCopyWithImpl<$Res>
    extends _$EditScreenStateCopyWithImpl<$Res, _$_UpdateFailure>
    implements _$$_UpdateFailureCopyWith<$Res> {
  __$$_UpdateFailureCopyWithImpl(
      _$_UpdateFailure _value, $Res Function(_$_UpdateFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UpdateFailure implements _UpdateFailure {
  const _$_UpdateFailure();

  @override
  String toString() {
    return 'EditScreenState.updateFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdateFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function(String email) validationSuccess,
    required TResult Function() validationFailureNicknameExists,
    required TResult Function() validationFailureNicknameIsNotValid,
    required TResult Function() validationFailureUnknown,
    required TResult Function() updateSuccess,
    required TResult Function() updateFailure,
  }) {
    return updateFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String email)? validationSuccess,
    TResult? Function()? validationFailureNicknameExists,
    TResult? Function()? validationFailureNicknameIsNotValid,
    TResult? Function()? validationFailureUnknown,
    TResult? Function()? updateSuccess,
    TResult? Function()? updateFailure,
  }) {
    return updateFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String email)? validationSuccess,
    TResult Function()? validationFailureNicknameExists,
    TResult Function()? validationFailureNicknameIsNotValid,
    TResult Function()? validationFailureUnknown,
    TResult Function()? updateSuccess,
    TResult Function()? updateFailure,
    required TResult orElse(),
  }) {
    if (updateFailure != null) {
      return updateFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EnabledSubmit value) enabledSubmit,
    required TResult Function(_DisabledSubmit value) disabledSubmit,
    required TResult Function(_ValidationSuccess value) validationSuccess,
    required TResult Function(_ValidationFailureNicknameExists value)
        validationFailureNicknameExists,
    required TResult Function(_ValidationFailureNicknameIsNotValid value)
        validationFailureNicknameIsNotValid,
    required TResult Function(_ValidationFailureUnknown value)
        validationFailureUnknown,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return updateFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationSuccess value)? validationSuccess,
    TResult? Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult? Function(_ValidationFailureNicknameIsNotValid value)?
        validationFailureNicknameIsNotValid,
    TResult? Function(_ValidationFailureUnknown value)?
        validationFailureUnknown,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateFailure value)? updateFailure,
  }) {
    return updateFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationSuccess value)? validationSuccess,
    TResult Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult Function(_ValidationFailureNicknameIsNotValid value)?
        validationFailureNicknameIsNotValid,
    TResult Function(_ValidationFailureUnknown value)? validationFailureUnknown,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateFailure != null) {
      return updateFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdateFailure implements EditScreenState {
  const factory _UpdateFailure() = _$_UpdateFailure;
}
