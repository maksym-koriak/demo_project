import 'package:flutter_interngram_delta/features/user/domain/entities/follows/follow_members.dart';

class Follows {
  final int? count;
  final List<FollowMembers>? members;

  Follows(this.count, this.members);
}
