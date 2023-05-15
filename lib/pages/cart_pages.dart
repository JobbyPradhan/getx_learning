import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPages extends StatefulWidget {
  const CartPages({Key? key}) : super(key: key);

  @override
  State<CartPages> createState() => _CartPagesState();
}

class _CartPagesState extends State<CartPages> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Cart Pages"),
      ),
      body: Center(
        child: TextButton(onPressed: (){
          //Navigator.pop(context);
          Get.back();
          Get.back();
        }
            , child: Text("Go Home")),
      ),
    );
  }
}
