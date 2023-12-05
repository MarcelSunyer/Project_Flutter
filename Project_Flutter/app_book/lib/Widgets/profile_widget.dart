import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            _buildContainersRow(),
            Positioned(
              top: 20,
              right: 20,
              child: _buildProfileAvatar(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileAvatar() {
    return const CircleAvatar(
      radius: 40,
      backgroundImage: AssetImage('assets/icono.png'),
    );
  }

  Widget _buildContainersRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildContainer(Color.fromARGB(255, 60, 70, 57)),
        const SizedBox(width: 75),
        _buildContainer(Color.fromARGB(255, 105, 109, 129)),
      ],
    );
  }

  Widget _buildContainer(Color color) {
    return Container(
      height: 225,
      width: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
