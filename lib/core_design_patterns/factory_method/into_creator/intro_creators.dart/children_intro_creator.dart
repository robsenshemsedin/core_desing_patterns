import 'package:core_desing_patterns/core_design_patterns/factory_method/factory_method_export.dart';
import 'package:flutter/material.dart';

class ChildrensIntroCreator extends IntroCreator {
  ChildrensIntroCreator() {
    title = 'Children Users Intro';
  }
  @override
  Widget introCard() {
    return const ChildrenIntroCard();
  }
}
