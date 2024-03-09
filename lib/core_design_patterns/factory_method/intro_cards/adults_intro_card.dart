import 'package:core_desing_patterns/core_design_patterns/factory_method/factory_method_export.dart';
import 'package:flutter/material.dart';

class AdultsIntroCard extends StatelessWidget {
  const AdultsIntroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/factory_method/adult/background_image.jpg',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(
                  0.3), // Adjust opacity here (0.5 for 50% darkness)
              colorBlendMode: BlendMode.darken,
            ),
            Positioned(
              top: 20,
              left: 10,
              child: Text(
                'Welcome, esteemed professional!',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    backgroundColor: Colors.black.withOpacity(0.1)),
              ),
            ),
            const Positioned(
              top: 60,
              left: 20,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/images/factory_method/adult/profile.jpg'),
                radius: 50,
              ),
            ),
            Positioned(
              top: 80,
              left: 130,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr. Michael Anderson',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.black.withOpacity(0.1)),
                  ),
                  Text(
                    'Neurosurgeon',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.black.withOpacity(0.1)),
                  ),
                  Text(
                    'St. John\'s Hospital',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.black.withOpacity(0.1)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
