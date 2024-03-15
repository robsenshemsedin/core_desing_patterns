import 'package:core_desing_patterns/core_design_patterns/decorator/decorator_export.dart';

class Debugging extends FlutterDevDecorator {
  Debugging(super.flutterDev);

  @override
  double getSalary() {
    return flutterDev.getSalary() + 10000;
  }
}
