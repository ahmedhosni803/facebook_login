import 'package:flutter/material.dart';

class story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: 100,
            margin: const EdgeInsetsDirectional.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset("assets/images/facebookStory.jpg"),
            )),
        Expanded(
          child: Container(
            margin: const EdgeInsetsDirectional.all(8),
            child: CircleAvatar(
                backgroundColor: Colors.indigo,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Icon(Icons.person),
                )),
          ),
        ),
      ],
    );
  }
}
