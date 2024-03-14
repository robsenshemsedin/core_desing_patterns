import 'package:core_desing_patterns/core_design_patterns/builder/builder_export.dart';

class Coffee {
  List<Ingredient> ingredients = [];
  late double _price;
  late String image;
  late String name;

  addIngredient(Ingredient ingredient) {
    ingredients.add(ingredient);
  }

  String getFormattedIngredients() {
    return ingredients.map((i) => i.name).join(', ');
  }

  String getFormattedDetail() {
    List<String> formattedDetails = [];
    for (Ingredient ingredient in ingredients) {
      formattedDetails.add("${ingredient.name}:");
      formattedDetails.add(ingredient.detail);
    }
    return formattedDetails.join('\n');
  }

  String getFormattedPrice() {
    return "\$${_price.toStringAsFixed(2)}";
  }

  setPrice(double price) {
    _price = price;
  }

  setName(String coffeeName) {
    name = coffeeName;
  }

  setImage(String imagePath) {
    image = imagePath;
  }
}
