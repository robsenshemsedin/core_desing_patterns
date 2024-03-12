import 'package:core_desing_patterns/core_design_patterns/abstract_factory/abstract_factory_export.dart';

abstract class IntroCardCreatorFactory {
  String ageGroup();

  AnimatedIntroCard animatedIntroCard();
  DefaultIntroCard defaultIntroCard();
}
