import 'package:flutter/material.dart';

import 'gridview_layout.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Dengan Agus',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyhomePage(),
      debugShowCheckedModeBanner:  false,
    );
  }
}
