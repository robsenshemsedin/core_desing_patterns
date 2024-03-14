import 'package:core_desing_patterns/core_design_patterns/builder/builder_export.dart';
import 'package:core_desing_patterns/core_design_patterns/builder/ingredients/milk_components/foam.dart';
import 'package:core_desing_patterns/core_design_patterns/builder/ingredients/milk_components/streamed_milk.dart';

class CappuccinoBuilder extends CoffeeBuilder {
  CappuccinoBuilder() {
    price = 4;
    image = 'assets/images/builder/cappuccino.jpg';
    name = 'Cappuccino';
  }
  @override
  addBaseIngredients() {
    coffee.addIngredient(Espresso());
  }

  @override
  addFlavorIngredients() {
// Cappuccino doesn't contain Flavors
  }

  @override
  addMilkIngredients() {
    coffee.addIngredient(StreamedMilk());
    coffee.addIngredient(Foam());
  }
}
