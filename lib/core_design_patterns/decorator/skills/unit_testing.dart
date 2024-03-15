import 'package:core_desing_patterns/core_design_patterns/decorator/decorator_export.dart';

class UnitTesting extends FlutterDevDecorator {
  UnitTesting(super.flutterDev);

  @override
  double getSalary() {
    return flutterDev.getSalary() + 14500;
  }
}
