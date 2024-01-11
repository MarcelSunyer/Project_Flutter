import 'package:flutter/material.dart';

class BookReadingWidget extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final Color backgroundColor;
  final String text;
  final IconData iconData;

  const BookReadingWidget({
    Key? key,
    this.width = 200.0,
    this.height = 75.0,
    this.borderRadius = 38.0,
    this.backgroundColor = const Color.fromARGB(255, 67, 69, 70),
    required this.text,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Contenedor con blur
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              color: backgroundColor.withOpacity(0.5),
            ),
          ),
        ),
        Container(
          width: width,
          height: height,
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius - 5),
            color: backgroundColor,
          ),
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(iconData, color: Colors.white),
              Text(
                text,
                style: const TextStyle(color: Colors.white, fontSize: 22.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
