import 'package:core_desing_patterns/core_design_patterns/decorator/decorator_export.dart';

class CustomWidgets extends FlutterDevDecorator {
  CustomWidgets(super.flutterDev);

  @override
  double getSalary() {
    return flutterDev.getSalary() + 13500;
  }
}
