class Publication {
  final Users user;
  final String title;
  final DateTime createdAt;
  final String imageUrl;
  final int commentsCount;
  final int sharedCount;
  final Reaction currentUserReaction;

  Publication({
    required this.user,
    required this.title,
    required this.createdAt,
    required this.imageUrl,
    required this.commentsCount,
    required this.sharedCount,
    required this.currentUserReaction,
  });
}

class Users {
  final String avatar;
  final String userName;

  Users({
    required this.avatar,
    required this.userName,
  });
}

enum Reaction { like, love, laughing, sad, shocking, angry }
