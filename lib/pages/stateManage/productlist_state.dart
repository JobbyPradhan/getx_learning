import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/state/counter.dart';

class ProductListState extends StatefulWidget {
  ProductListState({Key? key}) : super(key: key);

  @override
  State<ProductListState> createState() => _ProductListStateState();
}

class _ProductListStateState extends State<ProductListState> {
  List<String> fruits = ['Orange', 'Banana', 'Apple'];

  List<String> tempFruits = [];


  FavoriteController favoriteController = Get.put(FavoriteController());
  ImagePickerController imagePickerController =
      Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product List")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(() {
              if (kIsWeb) {
                return CircleAvatar(
                    radius: 30,
                    backgroundImage: imagePickerController.imagePath.isNotEmpty
                        ? NetworkImage(
                            imagePickerController.imagePath.toString())
                        : null);
              } else {
                return CircleAvatar(
                    radius: 30,
                    backgroundImage: imagePickerController.imagePath.isNotEmpty ? FileImage(
                        File(imagePickerController.imagePath.toString()))
                        : null);
              }
            }),
            ListView.builder(
              shrinkWrap: true, //
              itemCount: favoriteController.fruits.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(favoriteController.fruits[index]),
                    trailing: Obx(() {
                      return Icon(
                        Icons.favorite,
                        color: favoriteController.tempFruits.contains(
                                favoriteController.fruits[index].toString())
                            ? Colors.red
                            : Colors.grey,
                      );
                    }),
                    onTap: () {
                      if (favoriteController.tempFruits.contains(
                          favoriteController.fruits[index].toString())) {
                        favoriteController
                            .removeFavorite(favoriteController.fruits[index]);
                      } else {
                        favoriteController
                            .addFavorite(favoriteController.fruits[index]);
                      }
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          imagePickerController.getImage();
        },
        child: const Icon(Icons.browse_gallery),
      ),
    );
  }
}
