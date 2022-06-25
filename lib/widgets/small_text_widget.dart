import 'package:flutter/material.dart';

class SmallTextWidget extends StatelessWidget {
  SmallTextWidget({
    Key? key,
    required this.text,
    this.size = 14,
    required this.align,
  }) : super(key: key);
  final String text;
  double size;
  Color color = const Color(0xff727272);
  TextOverflow? overflow;
  TextAlign align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 3,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontSize: size,
      ),
      textAlign: align,
    );
  }
}
