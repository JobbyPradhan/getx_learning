import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/state/counter.dart';

class HomePagesState extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());
  final OpacityController opacityController = Get.put(OpacityController());
  final SwitchController switchController = Get.put(SwitchController());

  HomePagesState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page State'),
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Notification"),
            Obx(() {
              return Switch(
                  value: (switchController.isOpen.value),
                  onChanged: (value) {
                    switchController.setOnOff(value);
                  });
            }),
          ],
        ),
        Obx(() {
          return Text("${controller.counter}");
        }),
        Obx(() {
          return Container(
            height: 200,
            width: 200,
            color:
                Colors.deepPurple.withOpacity(opacityController.opacity.value),
          );
        }),
        Obx(() {
          return Slider(
              value: opacityController.opacity.value,
              onChanged: (value) {
                opacityController.setOpacity(value);
              });
        })
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
