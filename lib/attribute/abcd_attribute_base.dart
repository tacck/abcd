class AbcdAttributeBase {
  AbcdAttributeBase();

  bool equals(AbcdAttributeBase attribute) {
    return attribute.runtimeType.toString() == runtimeType.toString();
  }

  @override
  int get hashCode => runtimeType.toString().hashCode;

  @override
  bool operator ==(Object other) {
    return other is AbcdAttributeBase ? other.hashCode == hashCode : false;
  }
}
