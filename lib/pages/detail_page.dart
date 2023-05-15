import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/pages/cart_pages.dart';
import 'package:getx_learning/routes/my_routes.dart';

class DetailPages extends StatefulWidget {
  DetailPages({Key? key}) : super(key: key);

  @override
  State<DetailPages> createState() => _DetailPagesState();
}

class _DetailPagesState extends State<DetailPages> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height*1;
    return Scaffold(
      appBar: AppBar(
        title: ((Get.arguments)) == null
            ? const Text("Detail Page")
            : Text("Detail Pages ${Get.arguments[0]}"),
      ),
      body: Column(
        children: [
          Container(
            //height: MediaQuery.of(context).size.height * .8,
            //  height: Get.height * .8,
            height: height * .2,
            width: Get.width * .8,
            color: Colors.deepPurple,
            child: Center(
              child: TextButton(
                  onPressed: () {
                    //Navigator.pop(context);
                    // Get.to(const CartPages());
                    Get.toNamed(MyRoutes.cartRoutes);
                  },
                  child: const Text("Go To Cart",style: TextStyle(
                      color: Colors.white
                  ),)),
            ),
          ),
          Container(
            //height: MediaQuery.of(context).size.height * .8,
            //  height: Get.height * .8,
            height: height * .2,
            width: Get.width * .8,
            color: Colors.red,
            child: Center(
              child: TextButton(
                  onPressed: () {
                    //Navigator.pop(context);
                    // Get.to(const CartPages());
                    Get.toNamed(MyRoutes.langRoutes);
                  },
                  child: const Text("Go To Language",style: TextStyle(
                      color: Colors.white
                  ),)),
            ),
          ),
        ],
      )

    );
  }
}
