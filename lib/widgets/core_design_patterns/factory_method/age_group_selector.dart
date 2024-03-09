import 'package:core_desing_patterns/core_design_patterns/factory_method/factory_method_export.dart';
import 'package:flutter/material.dart';

class AgeGroupSelector extends StatelessWidget {
  final ValueSetter<int?> callBack;
  final int selectedIndex;
  final List<IntroCreator> introCreatorsList;
  const AgeGroupSelector(
      {super.key,
      required this.callBack,
      required this.introCreatorsList,
      required this.selectedIndex});

  @override
  Widget build(Object context) {
    return Column(children: <Widget>[
      for (final (index, introCreator) in introCreatorsList.indexed)
        RadioListTile(
            title: Text(introCreator.title),
            value: index,
            groupValue: selectedIndex,
            selected: index == selectedIndex,
            onChanged: callBack),
    ]);
  }
}
