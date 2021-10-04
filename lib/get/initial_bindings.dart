import 'package:facebook_ui/get/get_main_page.dart';
import 'package:facebook_ui/get/get_posts.dart';
import 'package:get/get.dart';

class InitialBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => GetPosts());
    Get.lazyPut(() => GetMainPage());
  }



}