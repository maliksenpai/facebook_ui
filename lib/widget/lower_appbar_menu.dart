import 'package:facebook_ui/get/get_main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LowerAppbarMenu extends StatefulWidget {
  @override
  _LowerAppbarMenuState createState() => _LowerAppbarMenuState();
}

class _LowerAppbarMenuState extends State<LowerAppbarMenu> {

  GetMainPage getMainPage = Get.put(GetMainPage());

  @override
  Widget build(BuildContext context) {
    return Obx( () => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Expanded(
            child: IconButton(
              icon: Icon( getMainPage.currIndex.value == 0 ? Icons.home : Icons.home_outlined,color: Colors.white,),
              onPressed: (){
                if(getMainPage.currIndex.value != 0){
                  getMainPage.currIndex.value = 0 ;
                }
              },
            ),
          ),
        Expanded(
            child: IconButton(
              icon: Icon( getMainPage.currIndex.value == 1 ? Icons.person : Icons.person_outline,color: Colors.white),
              onPressed: (){
                if(getMainPage.currIndex.value != 1){
                  getMainPage.currIndex.value = 1 ;
                }
              },
            ),
          ),
        Expanded(
            child: IconButton(
              icon: Icon( getMainPage.currIndex.value == 2 ? Icons.message : Icons.message_outlined,color: Colors.white),
              onPressed: (){
                if(getMainPage.currIndex.value != 2){
                  getMainPage.currIndex.value = 2 ;
                }
              },
            ),
          ),
        Expanded(
            child: IconButton(
              icon: Icon( getMainPage.currIndex.value == 3 ? Icons.notifications : Icons.notifications_outlined,color: Colors.white),
              onPressed: (){
                if(getMainPage.currIndex.value != 3){
                  getMainPage.currIndex.value = 3;
                }
              },
            ),
          ),
        Expanded(
            child: IconButton(
              icon: Icon( getMainPage.currIndex.value == 4 ? Icons.play_arrow : Icons.play_arrow_outlined,color: Colors.white),
              onPressed: (){
                if(getMainPage.currIndex.value != 4){
                  getMainPage.currIndex.value = 4;
                }
              },
            ),
          ),
        Expanded(
            child: IconButton(
              icon: Icon( getMainPage.currIndex.value == 5 ? Icons.group_sharp : Icons.group_outlined,color: Colors.white),
              onPressed: (){
                if(getMainPage.currIndex.value != 5){
                  getMainPage.currIndex.value = 5;
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
