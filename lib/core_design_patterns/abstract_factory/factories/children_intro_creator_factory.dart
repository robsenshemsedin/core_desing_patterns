import 'package:core_desing_patterns/core_design_patterns/abstract_factory/abstract_factory_export.dart';

class ChildrenIntroCreatorFactory implements IntroCardCreatorFactory {
  @override
  AnimatedIntroCard animatedIntroCard() {
    return ChildrenAnimatedIntroCard();
  }

  @override
  DefaultIntroCard defaultIntroCard() {
    return ChildrenDefaultIntroCard();
  }

  @override
  String ageGroup() {
    return 'CHILDREN';
  }
}
