class FeedPost{

  String username;
  String userImageUrl;
  String postDesc;
  String imageUrl;
  String videoUrl;
  int likeCount;
  int commentCount;
  int shareCount;

  FeedPost({this.username, this.userImageUrl, this.postDesc, this.imageUrl, this.videoUrl, this.likeCount, this.commentCount, this.shareCount});
}

enum PostType{

  Text,
  Image,
  Video,
}