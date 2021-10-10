import 'package:facebook_ui/widget/lower_appbar_menu.dart';
import 'package:facebook_ui/widget/post_list_widget.dart';
import 'package:facebook_ui/widget/send_post_widget.dart';
import 'package:facebook_ui/widget/story_list_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Facebook"),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () => null),
          IconButton(icon: Icon(Icons.menu), onPressed: () => null)
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: LowerAppbarMenu(),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SendPostWidget(),
            StoryListWidget(),
            PostListWidget()
          ],
        ),
      ),
    );
  }
}
