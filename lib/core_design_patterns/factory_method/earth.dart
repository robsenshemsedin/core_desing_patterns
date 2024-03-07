import 'package:core_desing_patterns/core_design_patterns/factory_method/factory_method.dart';

class Earth implements Planet {
  @override
  late double dayLength;

  @override
  double distanceFromSun = 500;

  @override
  String name = "Earth";

  @override
  void setDayLength() {
    // TODO: implement setDayLength
  }
}
