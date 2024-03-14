import 'package:core_desing_patterns/core_design_patterns/builder/builder_export.dart';
import 'package:core_desing_patterns/widgets/core_design_patterns/builder/builder_export.dart';
import 'package:flutter/material.dart';

class BuilderExample extends StatefulWidget {
  const BuilderExample({super.key});

  @override
  State<BuilderExample> createState() => _BuilderExampleState();
}

class _BuilderExampleState extends State<BuilderExample> {
  CoffeeMaker coffeeMaker = CoffeeMaker(MochaBuilder());
  List<CoffeeBuilder> coffeeBuilders = [
    MochaBuilder(),
    CappuccinoBuilder(),
    AmericanoBuilder()
  ];
  bool showDetail = false;
  int currentIndex = 0;
  changeCoffeeBuilder() {
    coffeeMaker.switchCoffeeBuilder(coffeeBuilders[currentIndex]);
    coffeeMaker.prepareCoffee();
    setState(() {});
  }

  setShowDetail(bool newValue) {
    setState(() {
      showDetail = newValue;
    });
  }

  @override
  void initState() {
    coffeeMaker.prepareCoffee();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  CoffeeDetail(
                      showDetail: showDetail,
                      coffee: coffeeMaker.getCoffee(),
                      setShowDetail: setShowDetail),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {
                            if (currentIndex > 0) {
                              currentIndex--;
                              changeCoffeeBuilder();
                            }
                          },
                          icon: const Icon(Icons.arrow_back_ios_new_sharp),
                        ),
                        IconButton(
                            onPressed: () {
                              if (currentIndex < coffeeBuilders.length - 1) {
                                currentIndex++;
                                changeCoffeeBuilder();
                              }
                            },
                            icon: const Icon(Icons.arrow_forward_ios_sharp))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
