import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/user_controller.dart';
import 'data_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final nameController = TextEditingController();
  final ageController = TextEditingController();

  final userController = Get.find<UserController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(labelText: 'Nome'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    userController.setUserName(nameController.text);
                    ScaffoldMessenger.of(context).clearSnackBars();
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Nome salvo com sucesso!'),
                    ));
                  },
                  child: const Text('Salvar'),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: TextField(
                    controller: ageController,
                    decoration: const InputDecoration(labelText: 'Idade'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    userController.setUserAge(int.parse(ageController.text));
                    ScaffoldMessenger.of(context).clearSnackBars();
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Idade salva com sucesso!'),
                    ));
                  },
                  child: const Text('Salvar'),
                )
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    ScaffoldMessenger.of(context).clearSnackBars();
                    return const DataScreen();
                  },
                ));
              },
              child: const Text('Tela de dados'),
            )
          ],
        ),
      ),
    );
  }
}
