// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'following_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FollowingDto {
  String? get id => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get nickName => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FollowingDtoCopyWith<FollowingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowingDtoCopyWith<$Res> {
  factory $FollowingDtoCopyWith(
          FollowingDto value, $Res Function(FollowingDto) then) =
      _$FollowingDtoCopyWithImpl<$Res, FollowingDto>;
  @useResult
  $Res call({String? id, String? fullName, String? nickName, String? photo});
}

/// @nodoc
class _$FollowingDtoCopyWithImpl<$Res, $Val extends FollowingDto>
    implements $FollowingDtoCopyWith<$Res> {
  _$FollowingDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? nickName = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FollowingDtoCopyWith<$Res>
    implements $FollowingDtoCopyWith<$Res> {
  factory _$$_FollowingDtoCopyWith(
          _$_FollowingDto value, $Res Function(_$_FollowingDto) then) =
      __$$_FollowingDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? fullName, String? nickName, String? photo});
}

/// @nodoc
class __$$_FollowingDtoCopyWithImpl<$Res>
    extends _$FollowingDtoCopyWithImpl<$Res, _$_FollowingDto>
    implements _$$_FollowingDtoCopyWith<$Res> {
  __$$_FollowingDtoCopyWithImpl(
      _$_FollowingDto _value, $Res Function(_$_FollowingDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? nickName = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$_FollowingDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FollowingDto extends _FollowingDto {
  const _$_FollowingDto({this.id, this.fullName, this.nickName, this.photo})
      : super._();

  @override
  final String? id;
  @override
  final String? fullName;
  @override
  final String? nickName;
  @override
  final String? photo;

  @override
  String toString() {
    return 'FollowingDto(id: $id, fullName: $fullName, nickName: $nickName, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FollowingDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, nickName, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FollowingDtoCopyWith<_$_FollowingDto> get copyWith =>
      __$$_FollowingDtoCopyWithImpl<_$_FollowingDto>(this, _$identity);
}

abstract class _FollowingDto extends FollowingDto {
  const factory _FollowingDto(
      {final String? id,
      final String? fullName,
      final String? nickName,
      final String? photo}) = _$_FollowingDto;
  const _FollowingDto._() : super._();

  @override
  String? get id;
  @override
  String? get fullName;
  @override
  String? get nickName;
  @override
  String? get photo;
  @override
  @JsonKey(ignore: true)
  _$$_FollowingDtoCopyWith<_$_FollowingDto> get copyWith =>
      throw _privateConstructorUsedError;
}
