import 'package:core_desing_patterns/core_design_patterns/builder/builder_export.dart';

abstract class CoffeeBuilder {
  late Coffee coffee;
  late double price;
  late String name;
  late String image;

  void createCoffee() => coffee = Coffee();
  Coffee getCoffee() => coffee;

  setCoffeePrice() => coffee.setPrice(price);
  setCoffeeName() => coffee.setName(name);
  setCoffeeImage() => coffee.setImage(image);
  addBaseIngredients();
  addMilkIngredients();
  addFlavorIngredients();
}
