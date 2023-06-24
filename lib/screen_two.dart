import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}


class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen one Page'),
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
              Get.toNamed('/');

            }, child: Text('LogOut'))
          ],
        ),
      ),
    );
  }
}
