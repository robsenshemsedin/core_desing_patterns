class SkillData {
  SkillData(this.label);
  final String label;
  bool selected = false;
  void setSelected({required bool isSelected}) => selected = isSelected;
}
