import 'package:flutter_interngram_delta/features/user/domain/entities/follows/follows.dart';
import 'package:flutter_interngram_delta/features/user/domain/entities/posts/post.dart';

class User {
  final String? id;
  final String? email;
  final String? phoneNumber;
  final String? fullName;
  final String? nickName;
  final String? dateOfBirth;
  final String? photo;
  final String? city;
  final String? bio;
  final String? createdAt;
  final String? updatedAt;
  final Follows? followedBy;
  final Follows? following;
  final Post? posts;

  User(
    this.id,
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
    this.posts,
  );
}
