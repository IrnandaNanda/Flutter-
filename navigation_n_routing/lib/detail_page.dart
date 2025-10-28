import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget{
  final String keterangan;
  const DetailPage({ Key? key, required this.keterangan }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(keterangan)),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Hello $keterangan'),
        ),
      ),
    );
  }
}