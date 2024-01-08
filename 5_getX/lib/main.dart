import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Controller controller = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(
        title: Text('GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<Controller>(
              init: Controller(),
              builder: (_) => Text('Current value is:${Get.find<Controller>().x}'),
            ),
            ElevatedButton(onPressed: () {
              Get.find<Controller>().increment();
            }, child: Text('Add number'))
          ],
        ),
      ),
    );
  }
}
