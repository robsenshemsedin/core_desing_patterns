import 'package:core_desing_patterns/core_design_patterns/core_design_patterns_export.dart';
import 'package:core_desing_patterns/widgets/core_design_patterns/factory_method/factory_method_export.dart';
import 'package:flutter/material.dart';

class FactoryMethodExample extends StatefulWidget {
  const FactoryMethodExample({super.key});

  @override
  State<FactoryMethodExample> createState() => _FactoryMethodExampleState();
}

class _FactoryMethodExampleState extends State<FactoryMethodExample> {
  final List<IntroCreator> introCreatorsList = [
    ChildrensIntroCreator(),
    YoungAdultsIntroCreator(),
    AdultsIntroCreator()
  ];

  int selectedIndex = 0;

  void setSelectedIndex(int? selectedValue) {
    setState(() {
      selectedIndex = selectedValue ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AgeGroupSelector(
          callBack: setSelectedIndex,
          selectedIndex: selectedIndex,
          introCreatorsList: introCreatorsList,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: introCreatorsList[selectedIndex].introCard(),
        ),
      ],
    );
  }
}
