import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigate_with_getx/second_page.dart';
import 'package:navigate_with_getx/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: '/', page: ()=>PageOne()),
        GetPage(name: '/second', page:()=> SecondPage())
      ],

    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigate with Getx'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {

                  // Get.to(SecondPage());
                 // Get.toNamed(SecondPage.pName);
                  Get.to(SecondPage(), arguments: 'Sanaa');

                },
                child: const Text(
                  'Move to Second Page',
                  style: TextStyle(fontSize: 25),
                )),
            ElevatedButton(
                onPressed: () {
                  Get.off(ThirdPage());
                },
                child: const Text(
                  "Move to Third Page",
                  style: TextStyle(fontSize: 25),
                )),
            ElevatedButton(
                onPressed: () {
                  Get.to(ThirdPage(), arguments: ['Sanaa', 'Zahraa']);
                },
                child: const Text(
                  "Move to Third Page with Data",
                  style: TextStyle(fontSize: 25),
                )),

          ],
        ),
      ),
    );
  }
}
