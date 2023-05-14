import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text("GetX Dialgo Alert"),
              subtitle: const Text("click this card will show dialog"),
              onTap: () {
                Get.defaultDialog(
                    title: "Delete Card",
                    titlePadding: const EdgeInsets.only(top: 16),
                    middleText: "Are you sure you want to delete this card ?",
                   /* content: const Column(
                      children: [
                        Text("This is text"),
                        Text("This is text"),
                        Text("This is text"),
                      ],
                    ),*/
                    contentPadding: const EdgeInsets.all(16),
                    textConfirm: 'Yes',
                   /* onConfirm: () => {
                      Get.back()
                    },*/
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text('Ok')),
                    cancel: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text('Cancel')),
                  //  textCancel: 'No'
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("GetX Bottom Sheet"),
              subtitle: const Text("click this card will show bottom sheet"),
              onTap: () {
                Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.light_mode),
                              title: Text('Light Theme'),
                              onTap: (){
                                  Get.changeTheme(ThemeData.light());
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.dark_mode),
                              title: Text('Dark Theme'),
                              onTap: (){
                                Get.changeTheme(ThemeData.dark());
                              },
                            )
                          ],
                        ),
                      ),
                    )
                  //  textCancel: 'No'
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
              "Your Message",
              colorText: Colors.orange,
              snackStyle: SnackStyle.FLOATING,
              "This is your snack bar.",
              icon: const Icon(Icons.add),
              snackPosition: SnackPosition.TOP,
              backgroundColor: Colors.deepPurple);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
