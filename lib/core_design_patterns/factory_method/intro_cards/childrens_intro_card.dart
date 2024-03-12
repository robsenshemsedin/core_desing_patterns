import 'package:flutter/material.dart';

class ChildrenIntroCard extends StatelessWidget {
  const ChildrenIntroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const CircleAvatar(
          backgroundImage:
              AssetImage('assets/images/factory_method/children/profile.jpg'),
          radius: 70,
        ),
        Text(
          'Welcome, little explorer!',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              backgroundColor: Colors.black.withOpacity(0.7)),
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Emma Johnson',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.pink,
                  backgroundColor: Colors.white),
            ),
            Text(
              'Grade 3',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  backgroundColor: Colors.white),
            ),
            Text(
              'Loves Science and Art',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  backgroundColor: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
