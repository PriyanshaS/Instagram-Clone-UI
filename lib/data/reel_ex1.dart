import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_clone/widgets/circle_story.dart';

class ReelEx2 extends StatelessWidget {
  const ReelEx2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
      

        children: [
        Expanded(
          flex: 2,
          child: Center(child: Text('Screen 2' , style: TextStyle(color: Colors.white),))),
        Expanded(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              Column(
                children: [Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                   
                    children: [
                      Icon(Icons.favorite_outline , color: Colors.white,size: 30,),
                      Text('12k' , style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(Icons.chat_bubble_outline_rounded , color: Colors.white,size: 30,),
                      Text('124' , style: TextStyle(color: Colors.white),)
                    ],
                  ),
                )],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Row(
                  children: [CircleStory() , Text('username123' , style: TextStyle(
                    color: Colors.white
                  ),)],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.near_me_outlined , color: Colors.white, 
                  size: 30,),
                )
                ],
              )
            ],
          ),
        ),

        
        )
        
        ,

        ]),
    );
  }
}