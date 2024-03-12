import 'package:core_desing_patterns/core_design_patterns/design_pattern.dart';
import 'package:flutter/material.dart';

class PopupMenu extends StatelessWidget {
  final List<CoreDesignPattern> coreDesingPatterns;
  final ValueSetter<int> selectCoreDesignPattern;
  const PopupMenu(
      {super.key,
      required this.coreDesingPatterns,
      required this.selectCoreDesignPattern});
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      itemBuilder: (context) {
        return [
          for (final (index, designPattern) in coreDesingPatterns.indexed)
            PopupMenuItem<int>(
              value: index,
              child: Text(designPattern.title()),
            ),
        ];
      },
      onSelected: selectCoreDesignPattern,
    );
  }
}
