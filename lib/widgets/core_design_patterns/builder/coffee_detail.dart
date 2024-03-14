import 'package:core_desing_patterns/core_design_patterns/builder/builder_export.dart';
import 'package:flutter/material.dart';

class CoffeeDetail extends StatelessWidget {
  final bool showDetail;
  final ValueSetter<bool> setShowDetail;
  final Coffee coffee;
  const CoffeeDetail(
      {super.key,
      required this.showDetail,
      required this.coffee,
      required this.setShowDetail});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 400,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              image: DecorationImage(
                  image: AssetImage(coffee.image), fit: BoxFit.fill)),
        ),
      ),
      ListTile(
        title: Text(
          coffee.name,
          style: const TextStyle(fontSize: 35),
        ),
        trailing: Text(
          coffee.getFormattedPrice(),
          style: const TextStyle(fontSize: 28),
        ),
      ),
      ListTile(
        title: const Text(
          'Ingredients',
          style: TextStyle(fontSize: 21),
        ),
        trailing: IconButton(
          onPressed: () {
            setShowDetail(!showDetail);
          },
          icon: Icon(showDetail ? Icons.arrow_drop_up : Icons.arrow_drop_down),
          iconSize: 35,
        ),
        subtitle: Text(
          coffee.getFormattedIngredients(),
          textAlign: TextAlign.justify,
          style: const TextStyle(fontSize: 16),
        ),
      ),
      showDetail
          ? Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
              child: Text(coffee.getFormattedDetail()),
            )
          : const SizedBox()
    ]);
  }
}
