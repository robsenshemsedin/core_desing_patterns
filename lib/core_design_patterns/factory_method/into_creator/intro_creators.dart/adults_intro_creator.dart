import 'package:core_desing_patterns/core_design_patterns/factory_method/factory_method_export.dart';
import 'package:flutter/material.dart';

class AdultsIntroCreator extends IntroCreator {
  AdultsIntroCreator() {
    title = 'Adult Users Intro';
  }
  @override
  Widget introCard() {
    return const AdultsIntroCard();
  }
  //artiticAdult
}
