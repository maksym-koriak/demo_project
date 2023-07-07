import 'package:flutter_interngram_delta/features/user/data/dto/posts/post_value_dto.dart';
import 'package:flutter_interngram_delta/features/user/domain/entities/posts/post.dart';
import 'package:flutter_interngram_delta/features/user/domain/entities/posts/post_value.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_dto.freezed.dart';

@freezed
class PostDto with _$PostDto {
  const PostDto._();

  const factory PostDto({
    int? count,
    List<PostValuesDto>? values,
  }) = _PostDto;

  factory PostDto.fromJson(Map<String, dynamic> json) {
    final count = json['count'];
    List<PostValuesDto>? values;
    if (json['values'] != null) {
      values = <PostValuesDto>[];
      json['values'].forEach(
        (v) {
          values?.add(PostValuesDto.fromJson(v));
        },
      );
    }
    return PostDto(count: count, values: values);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    if (values != null) {
      data['values'] = values!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  Post toEntity() {
    return Post(
      count,
      PostValuesDto.toEntityList(values),
    );
  }

  static List<Post> toEntityList(List<PostDto>? dtoList) {
    final List<Post> resultList = [];
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
