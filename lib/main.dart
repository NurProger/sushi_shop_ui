import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_store/models/shop.dart';
import 'package:sushi_store/pages/cart_page.dart';
import 'package:sushi_store/pages/intro_page.dart';
import 'package:sushi_store/pages/menu_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: ((context) => Shop()),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/introPage': (context) => const IntroPage(),
        '/menuPage': (context) => const MenuPage(),
        '/cartPage': (context) => const CartPage()
      },
      home: Scaffold(
        body: IntroPage(),
      ),
    );
  }
}
