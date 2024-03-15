import 'package:core_desing_patterns/core_design_patterns/decorator/decorator_export.dart';

class AdvancedStateManagement extends FlutterDevDecorator {
  AdvancedStateManagement(super.flutterDev);

  @override
  double getSalary() {
    return flutterDev.getSalary() + 15000;
  }
}
