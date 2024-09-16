class AbcdAttributeBase {
  AbcdAttributeBase();

  @override
  int get hashCode => runtimeType.toString().hashCode;

  @override
  bool operator ==(Object other) {
    return other is AbcdAttributeBase ? other.hashCode == hashCode : false;
  }
}
