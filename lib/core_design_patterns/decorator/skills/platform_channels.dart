import 'package:core_desing_patterns/core_design_patterns/decorator/decorator_export.dart';

class PlatformChannels extends FlutterDevDecorator {
  PlatformChannels(super.flutterDev);

  @override
  double getSalary() {
    return flutterDev.getSalary() + 16500;
  }
}
