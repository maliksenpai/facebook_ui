import 'package:faker_dart/faker_dart.dart';
import 'package:flutter/material.dart';

class SendPostWidget extends StatefulWidget {
  @override
  _SendPostWidgetState createState() => _SendPostWidgetState();
}

class _SendPostWidgetState extends State<SendPostWidget> {

  Faker faker = Faker.instance;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Row(
                children: [
                  CircleAvatar(
                    child: Image.network(faker.image.loremPicsum.image(width: 100,height: 100)),
                  )
                ],
              ),
            ),
            Flexible(
              child: Row(
                children: [
                  Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
