import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/languages/my_language.dart';
import 'package:getx_learning/pages/cart_pages.dart';
import 'package:getx_learning/pages/detail_page.dart';
import 'package:getx_learning/pages/home_page.dart';
import 'package:getx_learning/pages/language_pages.dart';
import 'package:getx_learning/pages/stateManage/home_page_state.dart';
import 'package:getx_learning/routes/my_routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePagesState(),
      getPages: [
        GetPage(name: MyRoutes.homeRoutes, page: ()=> HomePagesState()),
        GetPage(name: MyRoutes.detailRoutes, page: ()=> DetailPages()),
        GetPage(name: MyRoutes.cartRoutes, page: ()=> const CartPages()),
        GetPage(name: MyRoutes.langRoutes, page: ()=> const LanguagePage())
      ],
    );
  }
}

