import 'package:core_desing_patterns/core_design_patterns/abstract_factory/abstract_factory_export.dart';
import 'package:flutter/material.dart';

class AgeGroupSelector extends StatelessWidget {
  final ValueSetter<IntroTypes?> setIntroType;
  final IntroTypes selectedIntroType;
  final ValueSetter<int?> setAgeGroup;
  final int selectedAgeGroup;
  final List<IntroCardCreatorFactory> introCreatorsList;
  const AgeGroupSelector(
      {super.key,
      required this.setIntroType,
      required this.introCreatorsList,
      required this.selectedIntroType,
      required this.setAgeGroup,
      required this.selectedAgeGroup});

  @override
  Widget build(Object context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
      SizedBox(
        width: 150,
        child: Column(
          children: [
            const ListTile(
              title: Text('Age Group'),
              contentPadding: EdgeInsets.only(left: 10),
            ),
            for (final (index, introCreator) in introCreatorsList.indexed)
              RadioListTile(
                title: Text(introCreator.ageGroup()),
                value: index,
                groupValue: selectedAgeGroup,
                selected: index == selectedAgeGroup,
                onChanged: setAgeGroup,
                contentPadding: const EdgeInsets.all(0),
              )
          ],
        ),
      ),
      SizedBox(
        width: 200,
        child: Column(
          children: [
            const ListTile(
              title: Text('Intro Type'),
              contentPadding: EdgeInsets.only(left: 10),
            ),
            for (IntroTypes introType in IntroTypes.values)
              RadioListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(introType.name.toUpperCase()),
                  value: introType,
                  groupValue: selectedIntroType,
                  selected: introType == selectedIntroType,
                  onChanged: setIntroType),
          ],
        ),
      )
    ]);
  }
}
