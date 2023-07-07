// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follows_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FollowsDto {
  int? get count => throw _privateConstructorUsedError;
  List<FollowMembersDto>? get members => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FollowsDtoCopyWith<FollowsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowsDtoCopyWith<$Res> {
  factory $FollowsDtoCopyWith(
          FollowsDto value, $Res Function(FollowsDto) then) =
      _$FollowsDtoCopyWithImpl<$Res, FollowsDto>;
  @useResult
  $Res call({int? count, List<FollowMembersDto>? members});
}

/// @nodoc
class _$FollowsDtoCopyWithImpl<$Res, $Val extends FollowsDto>
    implements $FollowsDtoCopyWith<$Res> {
  _$FollowsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? members = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<FollowMembersDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FollowsDtoCopyWith<$Res>
    implements $FollowsDtoCopyWith<$Res> {
  factory _$$_FollowsDtoCopyWith(
          _$_FollowsDto value, $Res Function(_$_FollowsDto) then) =
      __$$_FollowsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, List<FollowMembersDto>? members});
}

/// @nodoc
class __$$_FollowsDtoCopyWithImpl<$Res>
    extends _$FollowsDtoCopyWithImpl<$Res, _$_FollowsDto>
    implements _$$_FollowsDtoCopyWith<$Res> {
  __$$_FollowsDtoCopyWithImpl(
      _$_FollowsDto _value, $Res Function(_$_FollowsDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? members = freezed,
  }) {
    return _then(_$_FollowsDto(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      members: freezed == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<FollowMembersDto>?,
    ));
  }
}

/// @nodoc

class _$_FollowsDto extends _FollowsDto {
  const _$_FollowsDto({this.count, final List<FollowMembersDto>? members})
      : _members = members,
        super._();

  @override
  final int? count;
  final List<FollowMembersDto>? _members;
  @override
  List<FollowMembersDto>? get members {
    final value = _members;
    if (value == null) return null;
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FollowsDto(count: $count, members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FollowsDto &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FollowsDtoCopyWith<_$_FollowsDto> get copyWith =>
      __$$_FollowsDtoCopyWithImpl<_$_FollowsDto>(this, _$identity);
}

abstract class _FollowsDto extends FollowsDto {
  const factory _FollowsDto(
      {final int? count,
      final List<FollowMembersDto>? members}) = _$_FollowsDto;
  const _FollowsDto._() : super._();

  @override
  int? get count;
  @override
  List<FollowMembersDto>? get members;
  @override
  @JsonKey(ignore: true)
  _$$_FollowsDtoCopyWith<_$_FollowsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
