import 'package:flutter/material.dart';

class GenreWidget extends StatelessWidget {
  final String genre;
  final IconData icon;
  final Color color;

  const GenreWidget({super.key, required this.genre, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Colors.grey[100]!;
    Color circleColor = Colors.grey[300]!;
    Color borderColor = const Color.fromARGB(255, 190, 190, 190);

    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: borderColor, width: 1.0),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: circleColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: color,
            ),
          ),
          const SizedBox(width: 8.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              genre,
              style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
