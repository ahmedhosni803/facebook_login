import 'package:flutter/material.dart';

class btn extends StatelessWidget {
  String image;
  String text;
  btn(this.text, this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Column(children: [
                Image.asset(
                  image,
                  height: 20,
                ),
              ]),
              const SizedBox(
                width: 5,
              ),
              Column(children: [
                Text(
                  text,
                  style: const TextStyle(fontSize: 20),
                ),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}







        // margin:EdgeInsetsDirectional.all(10),
        // child: Row(
        //   children: [
        //
        //     // Expanded(
        // SizedBox(
        //         width: 10,
        //       ),
        //
        //     Text('$text',style: TextStyle(fontSize: 20),),
            
      //     ],
      //   ),
      // ),


