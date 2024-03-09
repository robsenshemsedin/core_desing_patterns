import 'package:core_desing_patterns/core_design_patterns/factory_method/factory_method_export.dart';
import 'package:core_desing_patterns/core_design_patterns/factory_method/intro_cards/young_adults_intro_card.dart';
import 'package:flutter/material.dart';

class YoungAdultsIntroCreator extends IntroCreator {
  YoungAdultsIntroCreator() {
    title = 'Young Adult Users Intro';
  }
  @override
  Widget introCard() {
    return const YoungAdultsIntroCard();
  }
}
