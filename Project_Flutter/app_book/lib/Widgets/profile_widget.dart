import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final double avatarRadius;

  const ProfileWidget({Key? key, this.avatarRadius = 40.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'Home',
                style: TextStyle(
                  fontSize: 42,
                  fontFamily: 'MyFont',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildProfileAvatar(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileAvatar() {
    return CircleAvatar(
      radius: avatarRadius,
      backgroundImage: AssetImage('assets/icono.png'),
    );
  }
}
