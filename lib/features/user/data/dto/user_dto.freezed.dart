// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDto {
  String? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get nickName => throw _privateConstructorUsedError;
  String? get dateOfBirth => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  FollowsDto? get followedBy => throw _privateConstructorUsedError;
  FollowsDto? get following => throw _privateConstructorUsedError;
  PostDto? get posts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res, UserDto>;
  @useResult
  $Res call(
      {String? id,
      String? email,
      String? phoneNumber,
      String? fullName,
      String? nickName,
      String? dateOfBirth,
      String? photo,
      String? city,
      String? bio,
      String? createdAt,
      String? updatedAt,
      FollowsDto? followedBy,
      FollowsDto? following,
      PostDto? posts});

  $FollowsDtoCopyWith<$Res>? get followedBy;
  $FollowsDtoCopyWith<$Res>? get following;
  $PostDtoCopyWith<$Res>? get posts;
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res, $Val extends UserDto>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? fullName = freezed,
    Object? nickName = freezed,
    Object? dateOfBirth = freezed,
    Object? photo = freezed,
    Object? city = freezed,
    Object? bio = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? followedBy = freezed,
    Object? following = freezed,
    Object? posts = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      followedBy: freezed == followedBy
          ? _value.followedBy
          : followedBy // ignore: cast_nullable_to_non_nullable
              as FollowsDto?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as FollowsDto?,
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as PostDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FollowsDtoCopyWith<$Res>? get followedBy {
    if (_value.followedBy == null) {
      return null;
    }

    return $FollowsDtoCopyWith<$Res>(_value.followedBy!, (value) {
      return _then(_value.copyWith(followedBy: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FollowsDtoCopyWith<$Res>? get following {
    if (_value.following == null) {
      return null;
    }

    return $FollowsDtoCopyWith<$Res>(_value.following!, (value) {
      return _then(_value.copyWith(following: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PostDtoCopyWith<$Res>? get posts {
    if (_value.posts == null) {
      return null;
    }

    return $PostDtoCopyWith<$Res>(_value.posts!, (value) {
      return _then(_value.copyWith(posts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$_UserDtoCopyWith(
          _$_UserDto value, $Res Function(_$_UserDto) then) =
      __$$_UserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? email,
      String? phoneNumber,
      String? fullName,
      String? nickName,
      String? dateOfBirth,
      String? photo,
      String? city,
      String? bio,
      String? createdAt,
      String? updatedAt,
      FollowsDto? followedBy,
      FollowsDto? following,
      PostDto? posts});

  @override
  $FollowsDtoCopyWith<$Res>? get followedBy;
  @override
  $FollowsDtoCopyWith<$Res>? get following;
  @override
  $PostDtoCopyWith<$Res>? get posts;
}

/// @nodoc
class __$$_UserDtoCopyWithImpl<$Res>
    extends _$UserDtoCopyWithImpl<$Res, _$_UserDto>
    implements _$$_UserDtoCopyWith<$Res> {
  __$$_UserDtoCopyWithImpl(_$_UserDto _value, $Res Function(_$_UserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? fullName = freezed,
    Object? nickName = freezed,
    Object? dateOfBirth = freezed,
    Object? photo = freezed,
    Object? city = freezed,
    Object? bio = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? followedBy = freezed,
    Object? following = freezed,
    Object? posts = freezed,
  }) {
    return _then(_$_UserDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      followedBy: freezed == followedBy
          ? _value.followedBy
          : followedBy // ignore: cast_nullable_to_non_nullable
              as FollowsDto?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as FollowsDto?,
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as PostDto?,
    ));
  }
}

/// @nodoc

class _$_UserDto extends _UserDto {
  const _$_UserDto(
      {this.id,
      this.email,
      this.phoneNumber,
      this.fullName,
      this.nickName,
      this.dateOfBirth,
      this.photo,
      this.city,
      this.bio,
      this.createdAt,
      this.updatedAt,
      this.followedBy,
      this.following,
      this.posts})
      : super._();

  @override
  final String? id;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final String? fullName;
  @override
  final String? nickName;
  @override
  final String? dateOfBirth;
  @override
  final String? photo;
  @override
  final String? city;
  @override
  final String? bio;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final FollowsDto? followedBy;
  @override
  final FollowsDto? following;
  @override
  final PostDto? posts;

  @override
  String toString() {
    return 'UserDto(id: $id, email: $email, phoneNumber: $phoneNumber, fullName: $fullName, nickName: $nickName, dateOfBirth: $dateOfBirth, photo: $photo, city: $city, bio: $bio, createdAt: $createdAt, updatedAt: $updatedAt, followedBy: $followedBy, following: $following, posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.followedBy, followedBy) ||
                other.followedBy == followedBy) &&
            (identical(other.following, following) ||
                other.following == following) &&
            (identical(other.posts, posts) || other.posts == posts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      phoneNumber,
      fullName,
      nickName,
      dateOfBirth,
      photo,
      city,
      bio,
      createdAt,
      updatedAt,
      followedBy,
      following,
      posts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      __$$_UserDtoCopyWithImpl<_$_UserDto>(this, _$identity);
}

abstract class _UserDto extends UserDto {
  const factory _UserDto(
      {final String? id,
      final String? email,
      final String? phoneNumber,
      final String? fullName,
      final String? nickName,
      final String? dateOfBirth,
      final String? photo,
      final String? city,
      final String? bio,
      final String? createdAt,
      final String? updatedAt,
      final FollowsDto? followedBy,
      final FollowsDto? following,
      final PostDto? posts}) = _$_UserDto;
  const _UserDto._() : super._();

  @override
  String? get id;
  @override
  String? get email;
  @override
  String? get phoneNumber;
  @override
  String? get fullName;
  @override
  String? get nickName;
  @override
  String? get dateOfBirth;
  @override
  String? get photo;
  @override
  String? get city;
  @override
  String? get bio;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  FollowsDto? get followedBy;
  @override
  FollowsDto? get following;
  @override
  PostDto? get posts;
  @override
  @JsonKey(ignore: true)
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
