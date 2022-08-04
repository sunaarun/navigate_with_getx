import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdPage extends StatelessWidget {
   ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   print('${Get.arguments}');
    return Scaffold(
      appBar: AppBar(title: const Text('Third Page'),),
      body:  Center(
        child: Text('Third Page with Data \n ${Get.arguments}',style: TextStyle(fontSize:20 ),)
      ),
    );
  }
}
