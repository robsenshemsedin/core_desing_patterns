import 'package:core_desing_patterns/core_design_patterns/abstract_factory/abstract_factory_export.dart';

class AdultIntroCreatorFactory implements IntroCardCreatorFactory {
  @override
  AnimatedIntroCard animatedIntroCard() {
    return AdultAnimatedIntroCard();
  }

  @override
  DefaultIntroCard defaultIntroCard() {
    return AdultDefaultIntroCard();
  }

  @override
  String ageGroup() {
    return 'ADULT';
  }
}
