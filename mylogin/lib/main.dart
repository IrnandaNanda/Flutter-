import 'package:flutter/material.dart';
// import 'package:mylogin/login_screen.dart';
import 'package:mylogin/ui/shop_cart/index.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo (Irnanda)',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const ShopCartPage(),
    );
  }
}
