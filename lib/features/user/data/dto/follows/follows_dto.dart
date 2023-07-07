import 'package:flutter_interngram_delta/features/user/data/dto/follows/follow_members_dto.dart';
import 'package:flutter_interngram_delta/features/user/domain/entities/follows/follows.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'follows_dto.freezed.dart';

@freezed
class FollowsDto with _$FollowsDto {
  const FollowsDto._();

  const factory FollowsDto({
    int? count,
    List<FollowMembersDto>? members,
  }) = _FollowsDto;

  factory FollowsDto.fromJson(Map<String, dynamic> json) {
    final count = json['count'];
    List<FollowMembersDto>? members;
    if (json['members'] != null) {
      members = <FollowMembersDto>[];
      json['members'].forEach((v) {
        members!.add(FollowMembersDto.fromJson(v));
      });
    }
    return FollowsDto(count: count, members: members);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    if (members != null) {
      data['members'] = members!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  Follows toEntity() {
    return Follows(
      count,
      FollowMembersDto.toEntityList(members),
    );
  }

  static List<Follows> toEntityList(List<FollowsDto>? dtoList) {
    final List<Follows> resultList = [];
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
