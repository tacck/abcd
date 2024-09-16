import 'package:abcd/attribute/abcd_attribute_base.dart';

class AbcdPolicyBase {
  AbcdPolicyBase({
    required List<AbcdAttributeBase> attributes,
  }) : _attributes = attributes.toSet().toList();

  final List<AbcdAttributeBase> _attributes;

  get attributes => _attributes.toSet().toList();
}
