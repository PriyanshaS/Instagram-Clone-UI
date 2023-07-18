import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/circle_story.dart';


class PostCart extends StatelessWidget {
  const PostCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

          Row(
            children: [
              CircleStory(),
              Text('username123' , style: TextStyle(color: Colors.white , fontSize: 15),)
            ],
          ) ,
          Icon(Icons.more_vert, color: Colors.white,) 
        ], ),
        ///////////////////////////////////////////////////
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Image.asset('assets/images/post_pic.jpg' , 
          ),
        ),
        ////////////////////////////////////////////////////
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
 Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Icon(Icons.favorite_outline_outlined , color: Colors.white,
                size: 30,),
              ),
              SizedBox(width: 3,)
              ,
               Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Icon(Icons.chat_bubble_outline_outlined , color: Colors.white,
                size: 30,),
              ), 
              SizedBox(width: 3,)
              ,
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Icon(Icons.near_me_outlined , color: Colors.white,
                size: 30,),
              ),
              ],),
             
              Row(children: [Icon(Icons.bookmark_outline_outlined , color: Colors.white,
                    size: 30,),],)
            ],
          ),

        ),
        Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Text('145 likes' ,style: TextStyle(color: Colors.white),),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Text('username123' , style: TextStyle(fontWeight:FontWeight.bold , color: Colors.white ,
             ) ,),
            ),Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text('Hello this is my first instagram post' , style: TextStyle( color: Colors.white),),
            ),
          ],
        ),
        Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Text('view 64 comments' , style: TextStyle( color: Colors.grey.shade500),),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 13 , top: 6),
              child: Text('3 days ago' , style: TextStyle( color: Colors.grey.shade500),),
            ),
      ],
      
    );
  }
}