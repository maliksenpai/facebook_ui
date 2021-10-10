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
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IntrinsicHeight(
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
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        VerticalDivider(),
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
            Divider(),
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.carpenter, color: Colors.indigoAccent,),
                        Text("Yazı")
                      ],
                    ),
                  ),
                  VerticalDivider(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.videocam_sharp, color: Colors.red,),
                        Text("Canlı Video")
                      ],
                    ),
                  ),
                  VerticalDivider(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on, color: Colors.redAccent,),
                        Text("Konum")
                      ],
                    ),
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
