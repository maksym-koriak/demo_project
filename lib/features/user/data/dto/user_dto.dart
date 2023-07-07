@freezed
class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    String? id,
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
    PostDto? posts,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) {
    final id = json['id'];
    final email = json['email'];
    final phoneNumber = json['phoneNumber'];
    final fullName = json['fullName'];
    final nickName = json['nickName'];
    final dateOfBirth = json['dateOfBirth'];
    final photo = json['photo'];
    final city = json['city'];
    final bio = json['bio'];
    final createdAt = json['createdAt'];
    final updatedAt = json['updatedAt'];
    final followedBy = json['followedBy'] != null ? FollowsDto.fromJson(json['followedBy']) : null;
    final following = json['following'] != null ? FollowsDto.fromJson(json['following']) : null;
    final posts = json['posts'] != null ? PostDto.fromJson(json['posts']) : null;
    return UserDto(
      id: id,
      email: email,
      phoneNumber: phoneNumber,
      fullName: fullName,
      nickName: nickName,
      dateOfBirth: dateOfBirth,
      photo: photo,
      city: city,
      bio: bio,
      createdAt: createdAt,
      updatedAt: updatedAt,
      followedBy: followedBy,
      following: following,
      posts: posts,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['phoneNumber'] = phoneNumber;
    data['fullName'] = fullName;
    data['nickName'] = nickName;
    data['dateOfBirth'] = dateOfBirth;
    data['photo'] = photo;
    data['city'] = city;
    data['bio'] = bio;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    if (followedBy != null) {
      data['followedBy'] = followedBy!.toJson();
    }
    if (following != null) {
      data['following'] = following!.toJson();
    }
    if (posts != null) {
      data['posts'] = posts!.toJson();
    }
    return data;
  }

  User toEntity() {
    return User(
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
      followedBy != null ? followedBy!.toEntity() : null,
      following != null ? following!.toEntity() : null,
      posts != null ? posts!.toEntity() : null,
    );
  }
}
