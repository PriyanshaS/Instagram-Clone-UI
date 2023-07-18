import 'package:flutter/material.dart';

class CircleStory extends StatelessWidget {
  const CircleStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: ClipOval(
        child:Image.asset('assets/images/photo.jpg' ,
        fit: BoxFit.cover,
        height: 68,
        width: 68,),
      ),
    );
  }
}
