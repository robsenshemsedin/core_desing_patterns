import 'package:core_desing_patterns/core_design_patterns/builder/builder_export.dart';

class CoffeeMaker {
  CoffeeBuilder coffeeBuilder;
  CoffeeMaker(this.coffeeBuilder);
  prepareCoffee() {
    coffeeBuilder.createCoffee();
    coffeeBuilder.setCoffeePrice();
    coffeeBuilder.setCoffeeImage();
    coffeeBuilder.setCoffeeName();
    coffeeBuilder.addBaseIngredients();
    coffeeBuilder.addFlavorIngredients();
    coffeeBuilder.addMilkIngredients();
  }

  Coffee getCoffee() => coffeeBuilder.getCoffee();

  switchCoffeeBuilder(CoffeeBuilder newCoffeeBuilder) {
    coffeeBuilder = newCoffeeBuilder;
  }
}
