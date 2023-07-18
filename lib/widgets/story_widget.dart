import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/circle_story.dart';


class StoryWidget extends StatelessWidget {
  final String username;
  const StoryWidget({super.key , required this.username});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.pink , width: 3)
              ),
            ),
            CircleStory(),
          ],),
        )
        ,
        Text(username,style: TextStyle(color: Colors.grey.shade500),)
      ],
    );
  }
}