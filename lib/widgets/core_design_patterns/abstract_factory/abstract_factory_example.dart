import 'package:core_desing_patterns/core_design_patterns/abstract_factory/abstract_factory_export.dart';
import 'package:core_desing_patterns/widgets/core_design_patterns/abstract_factory/age_Intro_type_selector.dart';
import 'package:flutter/material.dart';

class AbstractFactoryExample extends StatefulWidget {
  const AbstractFactoryExample({super.key});

  @override
  State<AbstractFactoryExample> createState() => _AbstractFactoryExampleState();
}

class _AbstractFactoryExampleState extends State<AbstractFactoryExample> {
  final List<IntroCardCreatorFactory> introCreatorsList = [
    AdultIntroCreatorFactory(),
    ChildrenIntroCreatorFactory(),
  ];

  Map<int, Map<IntroTypes, Widget>> introMap = {};

  @override
  void initState() {
    for (final (index, introCreator) in introCreatorsList.indexed) {
      introMap[index] = {
        IntroTypes.defaultIntro: introCreator.defaultIntroCard().introCard(),
        IntroTypes.animatedIntro:
            introCreator.animatedIntroCard().animatedIntroCard()
      };
    }
    super.initState();
  }

  int selectedAgeGroup = 0;
  IntroTypes selectedIntroType = IntroTypes.defaultIntro;
  void setSelectedAgeGroup(int? selectedValue) {
    setState(() {
      selectedAgeGroup = selectedValue ?? 0;
    });
  }

  void setSelectedIntroType(IntroTypes? selectedValue) {
    setState(() {
      selectedIntroType = selectedValue ?? IntroTypes.defaultIntro;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AgeGroupSelector(
          setIntroType: setSelectedIntroType,
          selectedIntroType: selectedIntroType,
          introCreatorsList: introCreatorsList,
          selectedAgeGroup: selectedAgeGroup,
          setAgeGroup: setSelectedAgeGroup,
        ),
        introMap.isNotEmpty
            ? introMap[selectedAgeGroup]![selectedIntroType]!
            : const SizedBox()
      ],
    );
  }
}
