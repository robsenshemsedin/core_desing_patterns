import 'package:core_desing_patterns/core_design_patterns/builder/builder_export.dart';

class MochaBuilder extends CoffeeBuilder {
  MochaBuilder() {
    price = 5;
    image = 'assets/images/builder/mocha.jpg';
    name = 'Mocha';
  }

  @override
  addBaseIngredients() {
    coffee.addIngredient(Espresso());
  }

  @override
  addFlavorIngredients() {
    coffee.addIngredient(ChocolateSyrup());
    coffee.addIngredient(WhippedCream());
  }

  @override
  addMilkIngredients() {
    coffee.addIngredient(StreamedMilk());
  }
}
