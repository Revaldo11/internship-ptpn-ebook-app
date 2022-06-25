import 'package:flutter/material.dart';

class BigTextWidget extends StatelessWidget {
  BigTextWidget(
      {Key? key,
      required this.text,
      this.size = 0.0,
      this.color = const Color(0xFF000000)})
      : super(key: key);
  final String text;
  double size;
  Color? color;
  TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontFamily: 'Merriweather',
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
