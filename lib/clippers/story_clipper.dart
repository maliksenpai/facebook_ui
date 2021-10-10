import 'package:flutter/cupertino.dart';

class StoryClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - size.height*0.4);
    path.lineTo(size.width, size.height - size.height*0.4);
    path.lineTo(size.width, 0.0);
    return path;
  }
  //todo: geliştirme aşamasında true yoksa false olmalı
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;

}