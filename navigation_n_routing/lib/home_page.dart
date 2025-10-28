import 'package:flutter/material.dart';
import 'package:navigation_n_routing/detail_page.dart';

class HomePage extends StatelessWidget{
  const HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('home'),),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => DetailPage()
          ));
        }, child: Text('Detail Page'))
      ),
    );
  }
}