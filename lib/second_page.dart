import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigate_with_getx/third_page.dart';

class SecondPage extends StatelessWidget {
  static String pName = 'second';

  SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${Get.arguments}"),

            ElevatedButton(onPressed: (){
             // Navigator.pop(context);
              Get.back();
            }, child: const Text('Back')),
            ElevatedButton(onPressed: (){
              Get.offAll(ThirdPage());
            }, child: const Text('Move to third'))
          ],
        ),
      ),
    );
  }
}
