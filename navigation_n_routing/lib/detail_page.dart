import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget{
  final String keterangan;
  const DetailPage({ super.key, required this.keterangan });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(keterangan)),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(keterangan),
        ),
      ),
    );
  }
}