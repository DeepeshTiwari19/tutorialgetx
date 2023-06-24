import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorialgetx/home_screen.dart';
import 'package:tutorialgetx/screen_one.dart';
import 'package:tutorialgetx/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      getPages: [

        GetPage(name: '/', page: ()=> HomeScreen()),
        GetPage(name: '/screen', page: ()=>Screen()),
        GetPage(name: '/screenOne', page: ()=> ScreenOne())

      ],
    );
  }
}


