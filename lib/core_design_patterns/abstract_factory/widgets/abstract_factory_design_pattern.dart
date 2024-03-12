import 'package:core_desing_patterns/core_design_patterns/design_pattern.dart';
import 'package:core_desing_patterns/widgets/core_design_patterns/abstract_factory/abstract_factory_export.dart';
import 'package:flutter/material.dart';

class AbstractFactorPattern implements CoreDesignPattern {
  @override
  Widget designPatternExample() {
    return const AbstractFactoryExample();
  }

  @override
  String title() {
    return "Abstract Factory";
  }
}
