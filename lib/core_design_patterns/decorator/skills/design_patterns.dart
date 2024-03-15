import 'package:core_desing_patterns/core_design_patterns/decorator/decorator_export.dart';

class DesignPatterns extends FlutterDevDecorator {
  DesignPatterns(super.flutterDev);

  @override
  double getSalary() {
    return flutterDev.getSalary() + 1900;
  }
}
