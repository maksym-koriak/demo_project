import 'package:flutter_interngram_delta/features/user/domain/entities/follows/following.dart';

class FollowMembers {
  final String? followerId;
  final String? followingId;
  final Following? following;

  FollowMembers(this.followerId, this.followingId, this.following);
}