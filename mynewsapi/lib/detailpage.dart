import 'package:flutter/material.dart';

class Detailpage extends StatelessWidget {
  final url, title, content, publishedAt, author, urlToImage;

  const Detailpage({
    super.key,
    this.url,
    this.title,
    this.content,
    this.publishedAt,
    this.author,
    this.urlToImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'Detail News',
            style: TextStyle(color: Colors.white),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: <Widget>[
          urlToImage != null ? Image.network(urlToImage) : Container(
            margin: EdgeInsets.all(20),
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.grey,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(children: [
              crossAxisAlignment: CrossAxisAlignment.start,
              chidre
            ],),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: null),
    );
  }
}
