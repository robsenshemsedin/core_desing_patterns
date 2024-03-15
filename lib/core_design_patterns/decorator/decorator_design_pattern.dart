import 'package:core_desing_patterns/core_design_patterns/design_pattern.dart';
import 'package:core_desing_patterns/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DecoratorPattern implements CoreDesignPattern {
  @override
  Widget designPatternExample() {
    return const DecoratorExample();
  }

  @override
  String title() {
    return "Decorator";
  }
}
