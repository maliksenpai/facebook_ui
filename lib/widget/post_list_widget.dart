import 'dart:math';

import 'package:facebook_ui/model/feed_post.dart';
import 'package:facebook_ui/widget/feed_widget.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:flutter/material.dart';

class PostListWidget extends StatefulWidget {
  const PostListWidget({Key key}) : super(key: key);

  @override
  _PostListWidgetState createState() => _PostListWidgetState();
}

class _PostListWidgetState extends State<PostListWidget> {

  List<FeedPost> list = [];

  @override
  void initState() {
    Faker faker = Faker.instance;
    list.add(FeedPost(username: faker.name.fullName(),userImageUrl: faker.image.loremPixel.image(),postDesc: faker.music.genre(),likeCount: Random().nextInt(50),shareCount: Random().nextInt(50),commentCount: Random().nextInt(50)));
    list.add(FeedPost(username: faker.name.fullName(),userImageUrl: faker.image.loremPixel.image(),postDesc: faker.music.genre(),likeCount: Random().nextInt(50),shareCount: Random().nextInt(50),commentCount: Random().nextInt(50)));
    list.add(FeedPost(username: faker.name.fullName(),userImageUrl: faker.image.loremPixel.image(),postDesc: faker.music.genre(),likeCount: Random().nextInt(50),shareCount: Random().nextInt(50),commentCount: Random().nextInt(50)));
    list.add(FeedPost(username: faker.name.fullName(),userImageUrl: faker.image.loremPixel.image(),postDesc: faker.music.genre(),likeCount: Random().nextInt(50),shareCount: Random().nextInt(50),commentCount: Random().nextInt(50)));
    list.add(FeedPost(username: faker.name.fullName(),userImageUrl: faker.image.loremPixel.image(),postDesc: faker.music.genre(),likeCount: Random().nextInt(50),shareCount: Random().nextInt(50),commentCount: Random().nextInt(50)));
    list.add(FeedPost(username: faker.name.fullName(),userImageUrl: faker.image.loremPixel.image(),postDesc: faker.music.genre(),likeCount: Random().nextInt(50),shareCount: Random().nextInt(50),commentCount: Random().nextInt(50)));
    list.add(FeedPost(username: faker.name.fullName(),userImageUrl: faker.image.loremPixel.image(),postDesc: faker.music.genre(),likeCount: Random().nextInt(50),shareCount: Random().nextInt(50),commentCount: Random().nextInt(50)));
    list.add(FeedPost(username: faker.name.fullName(),userImageUrl: faker.image.loremPixel.image(),postDesc: faker.music.genre(),likeCount: Random().nextInt(50),shareCount: Random().nextInt(50),commentCount: Random().nextInt(50)));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context,index){
          var item = list[index];
          return FeedWidget(feedPost: item,);
          if(item.videoUrl == null){
            return Container();
          }else if(item.imageUrl == null){
            return Container();
          }else{
            return FeedWidget(feedPost: item,);
          }
        },
      ),
    );
  }
}
