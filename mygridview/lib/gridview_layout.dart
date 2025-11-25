
import 'package:flutter/material.dart';

class MyhomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Layout -- Belajar Dengan Agus"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah kolom
          crossAxisSpacing: 10.0,  // Jarak antar kolom
          mainAxisSpacing: 10.0, // Jarak antar baris
        ),
        children: List.generate(40,  (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.green.shade500,
              child: Center(
                child: Text(
                  'Aku Agus Ke- g$index',
                  style: TextStyle(color: Colors.white, fontSize: 20)
                ),
              ),
            ),
          );
        })
      )
    );
  }
}