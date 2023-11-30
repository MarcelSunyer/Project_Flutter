import 'package:flutter/material.dart';

class MenuBarBook extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final Color backgroundColor;

  const MenuBarBook({
    Key? key,
    this.width = 200.0,
    this.height = 50.0,
    this.borderRadius = 12.0,
    this.backgroundColor = Colors.blue,
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
        // Contenedor principal con margen
        Container(
          width: width,
          height: height,
          margin: EdgeInsets.all(5.0), // Ajusta el margen según sea necesario
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius - 5),
            color: backgroundColor,
          ),
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  // Navegar a la pantalla de "Home"
                 Navigator.of(context).pushNamed('/');
                },
                child: const Column(
                  children: [
                    Icon(Icons.home_outlined, color: Colors.white),
                    Text("Home", style: TextStyle(color: Colors.white,  fontSize: 10.0)),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  // Navegar a la pantalla de "Library"
                  Navigator.of(context).pushNamed('/');
                },
                child: const Column(
                  children: [
                    Icon(Icons.search_outlined, color: Colors.white),
                    Text("Library", style: TextStyle(color: Colors.white, fontSize: 10.0)),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  // Navegar a la pantalla de "My Books"
                  Navigator.of(context).pushNamed("/mybooks");
                },
                child: const Column(
                  children: [
                    Icon(Icons.auto_stories_outlined, color: Colors.white),
                    Text("My Books", style: TextStyle(color: Colors.white, fontSize: 10.0)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
