import 'package:core_desing_patterns/core_design_patterns/abstract_factory/abstract_factory_export.dart';
import 'package:core_desing_patterns/core_design_patterns/core_design_patterns_export.dart';
import 'package:core_desing_patterns/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<CoreDesignPattern> coreDesignPatterns = [
    FactoryMethodPattern(),
    AbstractFactorPattern()
  ];
  int selectedIndex = 0;
  void selectCoreDesignPattern(int selectedValue) {
    setState(() {
      selectedIndex = selectedValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          PopupMenu(
            coreDesingPatterns: coreDesignPatterns,
            selectCoreDesignPattern: selectCoreDesignPattern,
          )
        ],
      ),
      body: Center(
          child: coreDesignPatterns[selectedIndex].designPatternExample()),
    );
  }
}
