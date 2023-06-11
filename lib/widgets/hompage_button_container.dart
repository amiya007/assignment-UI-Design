import 'package:flutter/material.dart';

class TextButtonChildWithImage extends StatelessWidget {
  final ImageProvider<Object> image;
  final String text;
  const TextButtonChildWithImage(
      {super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(5),
      height: mq.height * 0.07,
      width: mq.width * 0.4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: image),
          Text(
            text,
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
