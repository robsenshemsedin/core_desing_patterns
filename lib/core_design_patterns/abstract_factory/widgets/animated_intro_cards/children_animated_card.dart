import 'dart:async';
import 'dart:math';

import 'package:core_desing_patterns/core_design_patterns/abstract_factory/widgets/animated_intro_card.dart';
import 'package:flutter/material.dart';
import 'package:core_desing_patterns/core_design_patterns/factory_method/factory_method_export.dart';

class ChildrenAnimatedIntroCard implements AnimatedIntroCard {
  @override
  Widget animatedIntroCard() {
    return AnimatedChildrenIntroCard(defaultAdultIntroCard: defaultIntroCard());
  }

  @override
  Widget defaultIntroCard() {
    return const ChildrenIntroCard();
  }
}

class AnimatedChildrenIntroCard extends StatefulWidget {
  final Widget defaultAdultIntroCard;
  const AnimatedChildrenIntroCard(
      {super.key, required this.defaultAdultIntroCard});

  @override
  State<AnimatedChildrenIntroCard> createState() =>
      _AnimatedChildrenIntroCardState();
}

class _AnimatedChildrenIntroCardState extends State<AnimatedChildrenIntroCard> {
  double width = 250;
  double height = 400;
  Color color = Colors.green;
  BorderRadiusGeometry borderRadius = BorderRadius.circular(8);
  late Timer timer;

  @override
  void initState() {
    timer = Timer.periodic(const Duration(milliseconds: 600), (_) {
      animateIntroCard();
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void animateIntroCard() {
    setState(() {
      final random = Random();

      width = random.nextInt(150) + 300.toDouble();
      height = random.nextInt(120) + 350.toDouble();

      color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );

      borderRadius = BorderRadius.circular(random.nextInt(50).toDouble());
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
      child: widget.defaultAdultIntroCard,
    );
  }
}
