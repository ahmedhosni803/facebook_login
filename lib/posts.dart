import 'package:flutter/cupertino.dart';
import 'package:facebook/like.dart';
import 'package:flutter/material.dart';

class posts extends StatelessWidget {
  const posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsetsDirectional.all(8),
                child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black87,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Icon(
                        Icons.person,
                        size: 50,
                      ),
                    )),
              ),
              Column(
                children: [
                  const Text(
                    'Person',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        '3h',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.public,
                        size: 15,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Container(
            margin: const EdgeInsetsDirectional.all(20),
            child: Expanded(
              child: Row(
                children: const [
                  Text(
                    'My Post',
                    style: TextStyle(fontSize: 40),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsetsDirectional.all(10),
            child: Row(children: [
              const Text(
                '100',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                  margin: const EdgeInsetsDirectional.all(8),
                  width: 35,
                  height: 35,
                  child: Expanded(
                    child: Image.asset(
                      'assets/images/like.jpg',
                    ),
                  )),
              const Spacer(),
              const Text(
                '100 Comments',
                style: TextStyle(fontSize: 18),
              ),
            ]),
          ),
          Container(
            margin: const EdgeInsetsDirectional.only(top: 5, bottom: 5),
            // width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
            ),
            child: Expanded(
              child: Row(
                children: [
                  Expanded(child: btn('Like', 'assets/images/singleLike.jpg')),
                  Expanded(child: btn('Comment', 'assets/images/comment.jpg')),
                  Expanded(child: btn('Share', 'assets/images/share.png')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
