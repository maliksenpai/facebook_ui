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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(faker.image.loremPicsum.image(width: 100,height: 100)),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      child: Text("Ne düşünüyorsun?",style: TextStyle(color: Colors.grey),),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: 5,
                            color: Colors.grey,
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.image,color: Colors.grey,),
                            Text("Fotoğraf",style: TextStyle(fontSize: 8,color: Colors.grey),maxLines: 1,)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              child: Row(
                children: [
                  Row(
                    children: [

                    ],
                  ),
                  Row(
                    children: [

                    ],
                  ),
                  Row(
                    children: [

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
