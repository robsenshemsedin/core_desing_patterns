import 'package:core_desing_patterns/core_design_patterns/design_pattern.dart';
import 'package:core_desing_patterns/widgets/core_design_patterns/factory_method/factory_method_export.dart';
import 'package:flutter/material.dart';

class FactoryMethodPattern implements CoreDesignPattern {
  @override
  Widget designPatternExample() {
    return const FactoryMethodExample();
  }

  @override
  String title() {
    return "Factory Method";
  }
}
