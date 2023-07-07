@freezed
class FollowMembersDto with _$FollowMembersDto {
  const FollowMembersDto._();

  const factory FollowMembersDto({
    String? followerId,
    String? followingId,
    FollowingDto? following,
  }) = _FollowMembersDto;

  factory FollowMembersDto.fromJson(Map<String, dynamic> json) {
    final followerId = json['followerId'];
    final followingId = json['followingId'];
    final following = json['following'] != null
        ? FollowingDto.fromJson(json['following'])
        : null;
    return FollowMembersDto(
        followerId: followerId, followingId: followingId, following: following);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['followerId'] = followerId;
    data['followingId'] = followingId;
    if (following != null) {
      data['following'] = following!.toJson();
    }
    return data;
  }

  FollowMembers toEntity() {
    return FollowMembers(
      followerId,
      followingId,
      following != null ? following!.toEntity() : null,
    );
  }

  static List<FollowMembers> toEntityList(List<FollowMembersDto>? dtoList) {
    final List<FollowMembers> resultList = [];
    if (dtoList != null) {
      for (final dto in dtoList) {
        resultList.add(
          dto.toEntity(),
        );
      }
      return resultList;
    } else {
      return resultList;
    }
  }
}
