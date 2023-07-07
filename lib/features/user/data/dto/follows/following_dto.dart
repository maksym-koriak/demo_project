@freezed
class FollowingDto with _$FollowingDto {
  const FollowingDto._();

  const factory FollowingDto({
    String? id,
    String? fullName,
    String? nickName,
    String? photo,
  }) = _FollowingDto;

  factory FollowingDto.fromJson(Map<String, dynamic> json) {
    final id = json['id'];
    final fullName = json['fullName'];
    final nickName = json['nickName'];
    final photo = json['photo'];
    return FollowingDto(
        id: id, fullName: fullName, nickName: nickName, photo: photo);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['fullName'] = fullName;
    data['nickName'] = nickName;
    data['photo'] = photo;
    return data;
  }

  Following toEntity() {
    return Following(
      id,
      fullName,
      nickName,
      photo,
    );
  }

  static List<Following> toEntityList(List<FollowingDto>? dtoList) {
    final List<Following> resultList = [];
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
