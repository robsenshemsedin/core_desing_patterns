import 'package:core_desing_patterns/core_design_patterns/factory_method/factory_method.dart';

class Earth implements Planet {
  @override
  double hoursInADay = 24;

  @override
  String distanceFromSun = "149,600,000";

  @override
  String name = "Earth";

  @override
  String image = 'assetPath';
}
