import 'package:core_desing_patterns/core_design_patterns/factory_method/factory_method_export.dart';
import 'package:core_desing_patterns/core_design_patterns/factory_method/intro_cards/adults_intro_card.dart';
import 'package:flutter/material.dart';

class AdultsIntroCreator extends IntroCreator {
  AdultsIntroCreator() {
    title = 'Adult Users Intro';
  }
  @override
  Widget introCard() {
    return const AdultsIntroCard();
  }
}
