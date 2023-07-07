// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follow_members_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FollowMembersDto {
  String? get followerId => throw _privateConstructorUsedError;
  String? get followingId => throw _privateConstructorUsedError;
  FollowingDto? get following => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FollowMembersDtoCopyWith<FollowMembersDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowMembersDtoCopyWith<$Res> {
  factory $FollowMembersDtoCopyWith(
          FollowMembersDto value, $Res Function(FollowMembersDto) then) =
      _$FollowMembersDtoCopyWithImpl<$Res, FollowMembersDto>;
  @useResult
  $Res call({String? followerId, String? followingId, FollowingDto? following});

  $FollowingDtoCopyWith<$Res>? get following;
}

/// @nodoc
class _$FollowMembersDtoCopyWithImpl<$Res, $Val extends FollowMembersDto>
    implements $FollowMembersDtoCopyWith<$Res> {
  _$FollowMembersDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followerId = freezed,
    Object? followingId = freezed,
    Object? following = freezed,
  }) {
    return _then(_value.copyWith(
      followerId: freezed == followerId
          ? _value.followerId
          : followerId // ignore: cast_nullable_to_non_nullable
              as String?,
      followingId: freezed == followingId
          ? _value.followingId
          : followingId // ignore: cast_nullable_to_non_nullable
              as String?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as FollowingDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FollowingDtoCopyWith<$Res>? get following {
    if (_value.following == null) {
      return null;
    }

    return $FollowingDtoCopyWith<$Res>(_value.following!, (value) {
      return _then(_value.copyWith(following: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FollowMembersDtoCopyWith<$Res>
    implements $FollowMembersDtoCopyWith<$Res> {
  factory _$$_FollowMembersDtoCopyWith(
          _$_FollowMembersDto value, $Res Function(_$_FollowMembersDto) then) =
      __$$_FollowMembersDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? followerId, String? followingId, FollowingDto? following});

  @override
  $FollowingDtoCopyWith<$Res>? get following;
}

/// @nodoc
class __$$_FollowMembersDtoCopyWithImpl<$Res>
    extends _$FollowMembersDtoCopyWithImpl<$Res, _$_FollowMembersDto>
    implements _$$_FollowMembersDtoCopyWith<$Res> {
  __$$_FollowMembersDtoCopyWithImpl(
      _$_FollowMembersDto _value, $Res Function(_$_FollowMembersDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followerId = freezed,
    Object? followingId = freezed,
    Object? following = freezed,
  }) {
    return _then(_$_FollowMembersDto(
      followerId: freezed == followerId
          ? _value.followerId
          : followerId // ignore: cast_nullable_to_non_nullable
              as String?,
      followingId: freezed == followingId
          ? _value.followingId
          : followingId // ignore: cast_nullable_to_non_nullable
              as String?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as FollowingDto?,
    ));
  }
}

/// @nodoc

class _$_FollowMembersDto extends _FollowMembersDto {
  const _$_FollowMembersDto({this.followerId, this.followingId, this.following})
      : super._();

  @override
  final String? followerId;
  @override
  final String? followingId;
  @override
  final FollowingDto? following;

  @override
  String toString() {
    return 'FollowMembersDto(followerId: $followerId, followingId: $followingId, following: $following)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FollowMembersDto &&
            (identical(other.followerId, followerId) ||
                other.followerId == followerId) &&
            (identical(other.followingId, followingId) ||
                other.followingId == followingId) &&
            (identical(other.following, following) ||
                other.following == following));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, followerId, followingId, following);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FollowMembersDtoCopyWith<_$_FollowMembersDto> get copyWith =>
      __$$_FollowMembersDtoCopyWithImpl<_$_FollowMembersDto>(this, _$identity);
}

abstract class _FollowMembersDto extends FollowMembersDto {
  const factory _FollowMembersDto(
      {final String? followerId,
      final String? followingId,
      final FollowingDto? following}) = _$_FollowMembersDto;
  const _FollowMembersDto._() : super._();

  @override
  String? get followerId;
  @override
  String? get followingId;
  @override
  FollowingDto? get following;
  @override
  @JsonKey(ignore: true)
  _$$_FollowMembersDtoCopyWith<_$_FollowMembersDto> get copyWith =>
      throw _privateConstructorUsedError;
}
