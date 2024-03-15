import 'package:core_desing_patterns/core_design_patterns/decorator/decorator_export.dart';
import 'package:flutter/material.dart';

class FlutterDevInfoCard extends StatelessWidget {
  final FlutterDev flutterDev;
  const FlutterDevInfoCard({super.key, required this.flutterDev});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.tertiaryContainer,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: ListTile(
          title: Text(
            'TITLE: ${flutterDev.getTitle()}',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).colorScheme.onTertiaryContainer),
          ),
          subtitle: Text(
            'ANNUAL SALARY: \$${flutterDev.getSalary() ~/ 1000}K',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.onTertiaryContainer),
          ),
        ),
      ),
    );
  }
}
