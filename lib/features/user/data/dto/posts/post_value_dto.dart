import 'package:flutter_interngram_delta/features/user/domain/entities/posts/post_value.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_value_dto.freezed.dart';

@freezed
class PostValuesDto with _$PostValuesDto {
  const PostValuesDto._();

  const factory PostValuesDto({
    String? id,
    String? creatorId,
    String? source,
    String? description,
    String? createdAt,
    String? updatedAt,
  }) = _PostValuesDto;

  factory PostValuesDto.fromJson(Map<String, dynamic> json) {
    final id = json['id'];
    final creatorId = json['creator_id'];
    final source = json['source'];
    final description = json['description'];
    final createdAt = json['createdAt'];
    final updatedAt = json['updatedAt'];
    return PostValuesDto(
      id: id,
      creatorId: creatorId,
      source: source,
      description: description,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['creator_id'] = creatorId;
    data['source'] = source;
    data['description'] = description;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }

  PostValue toEntity() {
    return PostValue(
      id,
      creatorId,
      source,
      description,
      createdAt,
      updatedAt,
    );
  }

  static List<PostValue> toEntityList(List<PostValuesDto>? dtoList) {
    final List<PostValue> resultList = [];
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
