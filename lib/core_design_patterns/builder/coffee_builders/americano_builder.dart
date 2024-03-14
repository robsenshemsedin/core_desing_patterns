import 'package:core_desing_patterns/core_design_patterns/builder/builder_export.dart';

class AmericanoBuilder extends CoffeeBuilder {
  AmericanoBuilder() {
    price = 3;
    image = 'assets/images/builder/americano.jpg';
    name = 'Americano';
  }
  @override
  addBaseIngredients() {
    coffee.addIngredient(Espresso());
    coffee.addIngredient(HotWater());
  }

  @override
  addFlavorIngredients() {
    // Americano doesn't contain Flavors
  }

  @override
  addMilkIngredients() {
    // Americano doesn't contain Milk ingredients
  }
}
