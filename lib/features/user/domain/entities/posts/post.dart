import 'package:flutter_interngram_delta/features/user/domain/entities/posts/post_value.dart';

class Post {
  final int? count;
  final List<PostValue>? values;

  Post(this.count, this.values);
}
