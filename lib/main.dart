import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_getx/controllers/user_controller.dart';

import 'screens/home_page.dart';

void main() {
  Get.lazyPut<UserController>(() => UserController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePage(),
    );
  }
}
