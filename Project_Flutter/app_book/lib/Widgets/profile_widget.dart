import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 50, // Ajusta la altura según tus necesidades
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hello, Juan! ',
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
                SizedBox(
                  width: 120, // Ajusta el ancho según tus necesidades
                ),
                  CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/icono.png'),
                ),
               
              ],
            ),
          ],
        ),
      ),
    );
  }
}
