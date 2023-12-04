import 'package:flutter/material.dart';

class bookselection extends StatelessWidget {
  const bookselection({super.key});

   @override
  Widget build(BuildContext context) {
return Column(
      children: [
        const SizedBox(height: 475),
        Container( 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '      Book Selection',
                style: TextStyle(
                  color: Color.fromARGB(255, 95, 87, 87),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 125,
                    width: 175,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 95, 81, 66),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  const SizedBox(width: 65),
                  Container(
                    height: 125,
                    width: 175,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 81, 91, 136),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 125,
              width: 175,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 103, 84, 112),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            const SizedBox(width: 65),
            Container(
              height: 125,
              width: 175,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 81, 136, 97),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ],
        ),
      ],
    );
  }
}