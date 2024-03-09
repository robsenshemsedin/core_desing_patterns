import 'package:core_desing_patterns/core_design_patterns/factory_method/factory_method_export.dart';
import 'package:flutter/material.dart';

abstract class IntroCreator {
  late String title;
  Widget introCard();
}
