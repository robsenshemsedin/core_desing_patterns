import 'package:core_desing_patterns/core_design_patterns/abstract_factory/widgets/default_intro_card.dart';
import 'package:core_desing_patterns/core_design_patterns/factory_method/factory_method_export.dart';
import 'package:flutter/material.dart';

class ChildrenDefaultIntroCard implements DefaultIntroCard {
  @override
  Widget introCard() {
    return const ChildrenIntroCard();
  }
}
