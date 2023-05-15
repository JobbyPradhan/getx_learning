import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Languages"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text('question'.tr),
            subtitle: Text('answer'.tr),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              OutlinedButton(onPressed: (){
                Get.updateLocale(const Locale('en','US'));
              }, child: const Text("English")),
              const SizedBox(
                width: 20,
              ),
              OutlinedButton(onPressed: (){
                Get.updateLocale(const Locale('mm','My'));
              }, child: const Text("Myanmar"))
            ],
          )
        ],
      ),
    );
  }
}
