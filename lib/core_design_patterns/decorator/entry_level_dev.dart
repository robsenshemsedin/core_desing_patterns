import 'package:core_desing_patterns/core_design_patterns/decorator/decorator_export.dart';

class EntryLevelDev implements FlutterDev {
  @override
  double getSalary() {
    return 25000;
  }

  @override
  String getTitle() {
    return 'Entry-Level';
  }
}
