import 'package:flutter/material.dart';

class MenuBarBook extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final Color backgroundColor;

  MenuBarBook({
    Key? key,
    this.width = 200.0,
    this.height = 50.0,
    this.borderRadius = 12.0,
    this.backgroundColor = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: backgroundColor,
      ),
      padding: const EdgeInsets.all(16.0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.home_outlined, color: Colors.white),
          Icon(Icons.search_outlined, color: Colors.white),
          Icon(Icons.auto_stories_outlined, color: Colors.white),
        ],
      ),
    );
  }
}