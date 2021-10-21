import 'package:facebook_ui/model/feed_post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class FeedWidget extends StatefulWidget {

  final FeedPost feedPost;

  FeedWidget({this.feedPost});

  @override
  _FeedWidgetState createState() => _FeedWidgetState();
}

class _FeedWidgetState extends State<FeedWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  child: Image.network(widget.feedPost.userImageUrl),
                ),
                title: Text(widget.feedPost.username),
              ),
              SizedBox(height: 10,),
              Text(
                widget.feedPost.postDesc,
                softWrap: true,
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(LineIcons.thumbsUp, color: Colors.blueAccent,),
                  Text(widget.feedPost.likeCount.toString())
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(LineIcons.thumbsUp, color: Colors.blueAccent,),
                          SizedBox(width: 5,),
                          Text(widget.feedPost.likeCount.toString())
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(LineIcons.comment, color: Colors.blueAccent,),
                          SizedBox(width: 5,),
                          Text(widget.feedPost.commentCount.toString())
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(LineIcons.share, color: Colors.blueAccent,),
                          SizedBox(width: 5,),
                          Text(widget.feedPost.shareCount.toString())
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
