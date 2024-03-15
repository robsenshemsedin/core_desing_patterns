import 'package:core_desing_patterns/core_design_patterns/decorator/decorator_export.dart';
import 'package:flutter/material.dart';

class SkillSelection extends StatelessWidget {
  final Map<int, SkillData> skillDataMap;
  final Function(int, bool?) onSelected;

  const SkillSelection({
    super.key,
    required this.skillDataMap,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      runSpacing: 5,
      children: <Widget>[
        for (var i = 0; i < skillDataMap.length; i++)
          i == 0
              ? _ChoiceChip(
                  label: 'Flutter Basics',
                  selected: true,
                  onSelected: (_) {},
                )
              : _ChoiceChip(
                  label: skillDataMap[i]!.label,
                  selected: skillDataMap[i]!.selected,
                  onSelected: (bool? selected) => onSelected(i, selected),
                ),
      ],
    );
  }
}

class _ChoiceChip extends StatelessWidget {
  const _ChoiceChip({
    required this.label,
    required this.selected,
    required this.onSelected,
  });

  final String label;
  final bool selected;
  final ValueSetter<bool> onSelected;

  @override
  Widget build(BuildContext context) {
    final color = selected
        ? Theme.of(context).colorScheme.onSecondary
        : Theme.of(context).colorScheme.onSecondaryContainer;

    return ChoiceChip(
      color: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return Theme.of(context).colorScheme.secondary;
        }

        return Theme.of(context).colorScheme.secondaryContainer;
      }),
      label: Text(label),
      labelStyle: TextStyle(color: color),
      checkmarkColor: color,
      selected: selected,
      onSelected: onSelected,
    );
  }
}
