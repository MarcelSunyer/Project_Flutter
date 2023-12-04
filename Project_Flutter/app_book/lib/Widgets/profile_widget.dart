import 'package:flutter/material.dart';
class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/icono.png'),
            ),
            const Align(
              
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Hello, Juan!',
                    style: TextStyle(
                      color: Color.fromARGB(255, 95, 87, 87),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'We wish you have a good day',
                    style: TextStyle(
                      color: Color.fromARGB(255, 136, 92, 92),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Container(
                  height: 225,
                  width: 175,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 130, 247, 84),
                    borderRadius: BorderRadius.circular(15),
                  ),
                 ),
                SizedBox(width: 20), // Ajusta el espacio entre los contenedores según tus necesidades
                 Container(
                  height: 225,
                  width: 175,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 75, 106, 245),
                    borderRadius: BorderRadius.circular(15),
                  ),
                 ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}