import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'detailpage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List _get = [];
  var api_key = '6bedad0491034daa9ed217c519e67b8c';

  @override
  void initState() {
    super.initState();
    _getData();
  }

  Future _getData() async {
    try {
      final response = await http.get(Uri.parse("https://newsapi.org/v2/everything?q=tesla&from=2025-08-30&sortBy=publishedAt&api_key=6bedad0491034daa9ed217c519e67b8c"));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          _get = data['articles'];
        });
      }
    } catch (e) {
      print(e);
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
            child: Text('Headline New from NewsAPI.org'),
          ),
        ),
        body: ListView.builder(
          itemCount: _get.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListTile(
                leading: Image.network(
                  _get[index]['urlToImage'] ?? 'https://via.placeholder.com/150',
                  width: 100,
                  fit: BoxFit.cover,
                ),
                title: Text(
                  _get[index]['title'] ?? 'No Title',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  _get[index]['description'] ?? 'No Description',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (c) => Detailpage(
                      url: _get[index]['url'],
                      title: _get[index]['title'],
                      content: _get[index]['content'],
                      urlToImage: _get[index]['urlToImage'],
                      author: _get[index]['author'],
                      publishedAt: _get[index]['publishedAt'],
                    )
                  ));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}