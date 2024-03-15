import 'package:core_desing_patterns/core_design_patterns/decorator/decorator_export.dart';

class PerformanceOptimization extends FlutterDevDecorator {
  PerformanceOptimization(super.flutterDev);

  @override
  double getSalary() {
    return flutterDev.getSalary() + 12500;
  }
}
