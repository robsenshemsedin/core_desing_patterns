import 'package:core_desing_patterns/core_design_patterns/decorator/decorator_export.dart';

class CodeReviewSkills extends FlutterDevDecorator {
  CodeReviewSkills(super.flutterDev);

  @override
  double getSalary() {
    return flutterDev.getSalary() + 17500;
  }
}
