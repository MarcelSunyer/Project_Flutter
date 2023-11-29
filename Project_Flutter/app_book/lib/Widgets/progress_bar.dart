import 'dart:math';

import 'package:flutter/material.dart';

class RandomProgressBar extends StatelessWidget {
  const RandomProgressBar({Key? key});

  @override
  Widget build(BuildContext context) {
    int randomPercentage = Random().nextInt(101);

    Color progressBarColor = calculateProgressBarColor(randomPercentage);

    double progressBarWidth = MediaQuery.of(context).size.width * 0.7; // Ancho relativo al 70% de la pantalla

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Progress: $randomPercentage%',
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 20),
        Container(
          width: progressBarWidth,
          height: 20,
          alignment: Alignment.centerLeft, // Alinea el contenido a la izquierda
          child: Container(
            width: progressBarWidth * (randomPercentage / 100), // Ancho relativo al porcentaje
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: progressBarColor,
            ),
          ),
        ),
      ],
    );
  }

  Color calculateProgressBarColor(int percentage) {
    double proximityToZero = percentage / 100.0;
    double proximityToOneHundred = 1.0 - proximityToZero;

    Color colorFrom = Colors.red;
    Color colorTo = Colors.green;

    Color? color = Color.lerp(
      colorFrom,
      colorTo,
      proximityToZero,
    );

    if (color != null) {
      color = Color.lerp(
        color,
        Colors.blue,
        proximityToOneHundred,
      );
    }

    return color ?? Colors.grey;
  }
}
