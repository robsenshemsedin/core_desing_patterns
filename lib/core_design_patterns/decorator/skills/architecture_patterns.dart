import 'package:core_desing_patterns/core_design_patterns/decorator/decorator_export.dart';

class ArchitecturePatterns extends FlutterDevDecorator {
  ArchitecturePatterns(super.flutterDev);

  @override
  double getSalary() {
    return flutterDev.getSalary() + 11000;
  }
}
