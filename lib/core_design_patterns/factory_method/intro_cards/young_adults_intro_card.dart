import 'package:core_desing_patterns/core_design_patterns/factory_method/factory_method_export.dart';
import 'package:flutter/material.dart';

class YoungAdultsIntroCard extends StatelessWidget {
  const YoungAdultsIntroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(
            'assets/images/factory_method/young_adult/back_ground_image.jpg',
          ),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(10),
        color: Colors.black.withOpacity(0.8),
        backgroundBlendMode:
            BlendMode.darken, // Adjust opacity here (0.5 for 50% darkness)
      ),
      width: 300,
      height: 200,
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -60,
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/factory_method/young_adult/profile_image.jpg',
              ),
              radius: 65,
            ),
          ),
          Positioned(
            top: 90,
            child: Container(
              color: Colors.black.withOpacity(0.6),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Hello, future leader!',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Alexandra Rodriguez',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Software Engineer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'University of Techville',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
