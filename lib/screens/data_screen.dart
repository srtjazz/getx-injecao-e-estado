import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/user_controller.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({super.key});

  TextStyle commonStyle() => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dados'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GetX<UserController>(
              builder: (userController) {
                return Text('Nome: ${userController.user.value.name}',
                    style: commonStyle());
              },
            ),
            GetX<UserController>(
              builder: (userController) {
                return Text('Idade: ${userController.user.value.age}',
                    style: commonStyle());
              },
            )
          ],
        ),
      ),
    );
  }
}
