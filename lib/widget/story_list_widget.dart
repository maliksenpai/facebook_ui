import 'package:facebook_ui/clippers/story_clipper.dart';
import 'package:facebook_ui/model/story_post.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryListWidget extends StatefulWidget {
  const StoryListWidget({Key key}) : super(key: key);

  @override
  _StoryListWidgetState createState() => _StoryListWidgetState();
}

class _StoryListWidgetState extends State<StoryListWidget> {
  Faker faker = Faker.instance;
  List<StoryPost> list;

  @override
  void initState() {
    list = [
      StoryPost(
          userName: faker.name.fullName(),
          userImageUrl: faker.image.loremPicsum.image(),
          feedPostText: faker.hacker.adjective(),
          feedPostImageUrl: faker.image.loremPicsum.image()),
      StoryPost(
          userName: faker.name.fullName(),
          userImageUrl: faker.image.loremPicsum.image(),
          feedPostText: faker.hacker.adjective(),
          feedPostImageUrl: faker.image.loremPicsum.image()),
      StoryPost(
          userName: faker.name.fullName(),
          userImageUrl: faker.image.loremPicsum.image(),
          feedPostText: faker.hacker.adjective(),
          feedPostImageUrl: faker.image.loremPicsum.image()),
      StoryPost(
          userName: faker.name.fullName(),
          userImageUrl: faker.image.loremPicsum.image(),
          feedPostText: faker.hacker.adjective(),
          feedPostImageUrl: faker.image.loremPicsum.image()),
      StoryPost(
          userName: faker.name.fullName(),
          userImageUrl: faker.image.loremPicsum.image(),
          feedPostText: faker.hacker.adjective(),
          feedPostImageUrl: faker.image.loremPicsum.image()),
      StoryPost(
          userName: faker.name.fullName(),
          userImageUrl: faker.image.loremPicsum.image(),
          feedPostText: faker.hacker.adjective(),
          feedPostImageUrl: faker.image.loremPicsum.image()),
      StoryPost(
          userName: faker.name.fullName(),
          userImageUrl: faker.image.loremPicsum.image(),
          feedPostText: faker.hacker.adjective(),
          feedPostImageUrl: faker.image.loremPicsum.image()),
      StoryPost(
          userName: faker.name.fullName(),
          userImageUrl: faker.image.loremPicsum.image(),
          feedPostText: faker.hacker.adjective(),
          feedPostImageUrl: faker.image.loremPicsum.image())
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          StoryPost storyPost = list[index];
          if(index==0){
            return Container(
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(12),
              ),
              constraints: BoxConstraints(
                  maxWidth: 150,
                  minWidth: 150,
                  minHeight: 200
              ),
              child: Stack(
                fit: StackFit.expand,
                alignment: Alignment.bottomLeft,
                children: [
                  FittedBox(
                    alignment: Alignment.topCenter,
                    child: Image.network(
                      faker.image.loremPicsum.image(seed: "213"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned.fill(
                    top: 40,
                    child: Container(
                      alignment: Alignment.center,
                      child: InkWell(
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white,width: 3)
                          ),
                          child: Icon(Icons.add,color: Colors.white,),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Hikayaye Ekleme Yap",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }else{
            return Container(
              constraints: BoxConstraints(
                  maxWidth: 150,
                  minWidth: 150
              ),
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Stack(
                fit: StackFit.expand,
                alignment: Alignment.bottomLeft,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: ShaderMask(
                      shaderCallback: (rect){
                        return LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [Colors.black,Colors.transparent]
                        ).createShader(rect);
                      },
                      blendMode: BlendMode.darken,
                      child: Image.network(
                        storyPost.feedPostImageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        storyPost.userName,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      alignment: Alignment.topRight,
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Text("5",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
