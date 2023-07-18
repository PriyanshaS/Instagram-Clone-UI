import 'package:flutter/material.dart';
import 'package:instagram_clone/data/reel_ex1.dart';
import 'package:instagram_clone/data/reel_ex2.dart';

class ReelsScreen extends StatelessWidget {
   ReelsScreen({super.key});
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          ReelEx1(),
          ReelEx2()
        ],
      ),
      appBar:AppBar(backgroundColor: Colors.black
      ,title: Text('Reels' , style: TextStyle(fontWeight: FontWeight.bold),),
       actions: [Padding(
         padding: const EdgeInsets.all(8.0),
         child: Icon(Icons.camera_alt_outlined , size: 30,),
       )
      ],),
    );
  }
}