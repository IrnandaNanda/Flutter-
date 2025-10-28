import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget{
  const DetailPage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Hello Agus'),
        ),
      ),
    );
  }
}