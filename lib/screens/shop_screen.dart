import 'package:flutter/material.dart';
import 'package:instagram_clone/data/image_data.dart';
import 'package:instagram_clone/widgets/image_cart.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _textController = TextEditingController();
    return Scaffold( backgroundColor: Colors.black,
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
      
      ),
      actions: [Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.shopping_cart , size: 30,),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.table_rows_rounded , size: 30,),
      )],
),
body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
itemBuilder: (context, index) {
  return ImageCart(imageData: imageList[index]);
},),
);
  }
}