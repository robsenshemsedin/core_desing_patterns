// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:core_desing_patterns/core_design_patterns/decorator/decorator_export.dart';
import 'package:core_desing_patterns/widgets/core_design_patterns/decorator/flutter_dev_information.dart';
import 'package:core_desing_patterns/widgets/core_design_patterns/decorator/skill_selection.dart';
import 'package:flutter/material.dart';

class DecoratorExample extends StatefulWidget {
  const DecoratorExample({super.key});

  @override
  DecoratorExampleState createState() {
    return DecoratorExampleState();
  }
}

class DecoratorExampleState extends State<DecoratorExample> {
  final Map<int, SkillData> skillDataMap = {
    1: SkillData('Debugging'),
    2: SkillData('Architecture Patterns'),
    3: SkillData('Performance Optimization'),
    4: SkillData('Custom Widgets'),
    5: SkillData('Unit Testing'),
    6: SkillData('Advanced State Management'),
    7: SkillData('Platform Channels'),
    8: SkillData('Code Review Skills'),
    9: SkillData('Design Patterns'),
  };
  FlutterDev flutterDev = EntryLevelDev();
  @override
  void initState() {
    super.initState();
  }

  void _onCustomPizzaChipSelected(int index, bool? selected) {
    _setChipSelected(index, selected!);
    _setDevSkillLevel();
  }

  void _setChipSelected(int index, bool selected) => setState(() {
        skillDataMap[index]!.setSelected(isSelected: selected);
      });

  void _setDevSkillLevel() => setState(() {
        flutterDev = EntryLevelDev();
        setState(() {
          if (skillDataMap[1]!.selected) flutterDev = Debugging(flutterDev);
          if (skillDataMap[2]!.selected)
            flutterDev = ArchitecturePatterns(flutterDev);
          if (skillDataMap[3]!.selected)
            flutterDev = PerformanceOptimization(flutterDev);
          if (skillDataMap[4]!.selected) flutterDev = CustomWidgets(flutterDev);
          if (skillDataMap[5]!.selected) flutterDev = UnitTesting(flutterDev);
          if (skillDataMap[6]!.selected)
            flutterDev = AdvancedStateManagement(flutterDev);
          if (skillDataMap[7]!.selected)
            flutterDev = PlatformChannels(flutterDev);
          if (skillDataMap[8]!.selected)
            flutterDev = CodeReviewSkills(flutterDev);
          if (skillDataMap[9]!.selected)
            flutterDev = DesignPatterns(flutterDev);
        });
      });

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior(),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: <Widget>[
            Text(
              'Select Your Skills:',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SkillSelection(
              skillDataMap: skillDataMap,
              onSelected: _onCustomPizzaChipSelected,
            ),
            FlutterDevInfoCard(flutterDev: flutterDev)
          ],
        ),
      ),
    );
  }
}
