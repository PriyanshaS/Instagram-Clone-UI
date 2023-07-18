import 'package:flutter/material.dart';
import 'package:instagram_clone/data/image_data.dart';
import 'package:instagram_clone/widgets/image_cart.dart';

class SearchScreen extends StatelessWidget {
   SearchScreen({super.key});
final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,
      automaticallyImplyLeading: false,
      title: Container(
        height: 30,
        width: 440,
        child: TextField(
          controller: _textController,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search , color: Colors.white,),
            fillColor: Colors.grey.shade600,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
          ,filled: true,
          hintStyle: TextStyle(color: Colors.grey),
          hintText: '',
          constraints: BoxConstraints.tightFor(width:327 , height: 60),
          ),
          
        ),
      
      )
),

body: GridView.builder(
  itemCount: imageList.length,
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 1, crossAxisSpacing: 1), itemBuilder: (context, index) {
  
  
  return ImageCart(imageData:imageList[index] ,);
},),
    );
  }
}