import 'package:core_desing_patterns/core_design_patterns/factory_method/factory_method.dart';

class EarthCreator implements PlanetCreator {
  @override
  Planet getPlanet() {
    return Earth();
  }
}
