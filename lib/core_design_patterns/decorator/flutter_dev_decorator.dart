import 'package:core_desing_patterns/core_design_patterns/decorator/decorator_export.dart';

class FlutterDevDecorator implements FlutterDev {
  FlutterDevDecorator(this.flutterDev);
  final FlutterDev flutterDev;
  @override
  double getSalary() {
    return flutterDev.getSalary() + 15000;
  }

  @override
  String getTitle() {
    final double currentSalary = getSalary();
    if (currentSalary <= 45000) {
      return 'Entry-Level';
    } else if (currentSalary > 45000 && currentSalary <= 90000) {
      return 'Mid-Level';
    } else {
      return 'Senior-Level';
    }
  }
}
