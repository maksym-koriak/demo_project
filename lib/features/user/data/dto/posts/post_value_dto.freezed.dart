// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_value_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostValuesDto {
  String? get id => throw _privateConstructorUsedError;
  String? get creatorId => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostValuesDtoCopyWith<PostValuesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostValuesDtoCopyWith<$Res> {
  factory $PostValuesDtoCopyWith(
          PostValuesDto value, $Res Function(PostValuesDto) then) =
      _$PostValuesDtoCopyWithImpl<$Res, PostValuesDto>;
  @useResult
  $Res call(
      {String? id,
      String? creatorId,
      String? source,
      String? description,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$PostValuesDtoCopyWithImpl<$Res, $Val extends PostValuesDto>
    implements $PostValuesDtoCopyWith<$Res> {
  _$PostValuesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creatorId = freezed,
    Object? source = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostValuesDtoCopyWith<$Res>
    implements $PostValuesDtoCopyWith<$Res> {
  factory _$$_PostValuesDtoCopyWith(
          _$_PostValuesDto value, $Res Function(_$_PostValuesDto) then) =
      __$$_PostValuesDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? creatorId,
      String? source,
      String? description,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_PostValuesDtoCopyWithImpl<$Res>
    extends _$PostValuesDtoCopyWithImpl<$Res, _$_PostValuesDto>
    implements _$$_PostValuesDtoCopyWith<$Res> {
  __$$_PostValuesDtoCopyWithImpl(
      _$_PostValuesDto _value, $Res Function(_$_PostValuesDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creatorId = freezed,
    Object? source = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_PostValuesDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PostValuesDto extends _PostValuesDto {
  const _$_PostValuesDto(
      {this.id,
      this.creatorId,
      this.source,
      this.description,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final String? id;
  @override
  final String? creatorId;
  @override
  final String? source;
  @override
  final String? description;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'PostValuesDto(id: $id, creatorId: $creatorId, source: $source, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostValuesDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, creatorId, source, description, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostValuesDtoCopyWith<_$_PostValuesDto> get copyWith =>
      __$$_PostValuesDtoCopyWithImpl<_$_PostValuesDto>(this, _$identity);
}

abstract class _PostValuesDto extends PostValuesDto {
  const factory _PostValuesDto(
      {final String? id,
      final String? creatorId,
      final String? source,
      final String? description,
      final String? createdAt,
      final String? updatedAt}) = _$_PostValuesDto;
  const _PostValuesDto._() : super._();

  @override
  String? get id;
  @override
  String? get creatorId;
  @override
  String? get source;
  @override
  String? get description;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_PostValuesDtoCopyWith<_$_PostValuesDto> get copyWith =>
      throw _privateConstructorUsedError;
}
