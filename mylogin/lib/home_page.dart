import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(28.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent
        ])
      ),
      child: Column(
        children: <Widget>[
          const Hero(
            tag: 'hero',
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: CircleAvatar(
                radius: 72.0,
                backgroundColor: Colors.transparent,
                backgroundImage: 
                  AssetImage('assets/images/stikma.png'),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'About STT Stikma Internasional',
              style: TextStyle( fontSize: 26.0, color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'STT STIKMA Internasional adalah salah satu perguruan tinggi swasta yang menyelenggarakan pendidikan komputer di Indonesia. STT STIKMA Internasional membuka program studi:'
              '\n\n- Teknik Informatika (S1)'
              '\n- Arsitektur (S1)'
              '\n- Komputer Multimedia (D3)',
              style: TextStyle(fontSize: 14.0, color:Colors.white),
            ),
          )
        ],
      ),
    );
  }
}