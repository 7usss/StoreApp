import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () async {
        http.Response response = await http.post(
          Uri.parse(
            'https://fakestoreapi.com/products',
          ),
          body: {
            'title': 'test',
            'price': '13.5',
            'description': 'lorem ipsum set',
            'image': 'https://i.pravatar.cc',
            'category': 'electronic',
          },
        );
        print(response.body);
      }),
    );
  }
}
