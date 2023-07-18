
import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/data/image_data.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImageCart extends StatelessWidget {
  const ImageCart({super.key ,required this.imageData});
  final ImageData imageData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRect(child: Image.asset(imageData.imageUrl ,fit: BoxFit.cover, )),
    );
  }
}