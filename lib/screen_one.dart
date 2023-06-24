import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorialgetx/screen_two.dart';

import 'home_screen.dart';

class Screen extends StatefulWidget {
  final String name;
  const Screen({super.key,this.name =''});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Page'+ widget.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('HomeScreen'),
            ElevatedButton(onPressed: (){
              // Navigator.pop(context);
              // Get.back();
              // Get.off(HomeScreen());
              Get.to(ScreenOne());
              Get.toNamed('/screenOne');
            // }, child: Text('LogOut'))
            }, child: Text('Go to Screen One'))
          ],
        ),
      ),
    );
  }
}
