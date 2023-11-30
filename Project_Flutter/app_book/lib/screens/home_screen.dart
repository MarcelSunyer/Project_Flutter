import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 100,  // Ancho de la caja
            height: 100, // Altura de la caja
            color: Colors.blue, // Color de la caja
            child: // Puedes agregar contenido adicional dentro de la caja si es necesario
                const Center(
              child: Text(
                'Hola',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
