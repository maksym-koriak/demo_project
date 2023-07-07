// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostDto {
  int? get count => throw _privateConstructorUsedError;
  List<PostValuesDto>? get values => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostDtoCopyWith<PostDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDtoCopyWith<$Res> {
  factory $PostDtoCopyWith(PostDto value, $Res Function(PostDto) then) =
      _$PostDtoCopyWithImpl<$Res, PostDto>;
  @useResult
  $Res call({int? count, List<PostValuesDto>? values});
}

/// @nodoc
class _$PostDtoCopyWithImpl<$Res, $Val extends PostDto>
    implements $PostDtoCopyWith<$Res> {
  _$PostDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? values = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<PostValuesDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostDtoCopyWith<$Res> implements $PostDtoCopyWith<$Res> {
  factory _$$_PostDtoCopyWith(
          _$_PostDto value, $Res Function(_$_PostDto) then) =
      __$$_PostDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, List<PostValuesDto>? values});
}

/// @nodoc
class __$$_PostDtoCopyWithImpl<$Res>
    extends _$PostDtoCopyWithImpl<$Res, _$_PostDto>
    implements _$$_PostDtoCopyWith<$Res> {
  __$$_PostDtoCopyWithImpl(_$_PostDto _value, $Res Function(_$_PostDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? values = freezed,
  }) {
    return _then(_$_PostDto(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<PostValuesDto>?,
    ));
  }
}

/// @nodoc

class _$_PostDto extends _PostDto {
  const _$_PostDto({this.count, final List<PostValuesDto>? values})
      : _values = values,
        super._();

  @override
  final int? count;
  final List<PostValuesDto>? _values;
  @override
  List<PostValuesDto>? get values {
    final value = _values;
    if (value == null) return null;
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostDto(count: $count, values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostDto &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostDtoCopyWith<_$_PostDto> get copyWith =>
      __$$_PostDtoCopyWithImpl<_$_PostDto>(this, _$identity);
}

abstract class _PostDto extends PostDto {
  const factory _PostDto(
      {final int? count, final List<PostValuesDto>? values}) = _$_PostDto;
  const _PostDto._() : super._();

  @override
  int? get count;
  @override
  List<PostValuesDto>? get values;
  @override
  @JsonKey(ignore: true)
  _$$_PostDtoCopyWith<_$_PostDto> get copyWith =>
      throw _privateConstructorUsedError;
}
