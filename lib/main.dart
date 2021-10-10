import 'package:facebook_ui/get/initial_bindings.dart';
import 'package:facebook_ui/screen/main_screen.dart';
import 'package:facebook_ui/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialBinding: InitialBindings(),
      initialRoute: "/",
      theme: ThemeData(
        primaryColor: LightTheme.primaryColor,
        primaryColorLight: LightTheme.primaryColor,
        primarySwatch: MaterialColor(0xff4267B2,LightTheme.primaryMap)
      ),
      home: MainScreen(),
    );
  }
}
