import 'package:facebook/posts.dart';
import 'package:facebook/story.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
        ),
      ),
      body: Column(
        children: [
          //Stores
          Expanded(
            flex: 1,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                story(),
                story(),
                story(),
                story(),
                story(),
                story(),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView(
              children: const [
                posts(),
                posts(),
                posts(),
                posts(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
