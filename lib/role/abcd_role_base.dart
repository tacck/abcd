import 'package:abcd/attribute/abcd_attribute_base.dart';
import 'package:abcd/policy/abcd_policies_base.dart';
import 'package:abcd/policy/abcd_policy_base.dart';

class AbcdRoleBase {
  AbcdRoleBase({
    required this.attributes,
  });

  final List<AbcdAttributeBase> attributes;

  bool includesAttribute(AbcdAttributeBase attribute) {
    return attributes.contains(attribute);
  }

  bool includesPolicy(AbcdPolicyBase policy) {
    return policy.attributes.every((attribute) => includesAttribute(attribute));
  }

  bool includesPolicies(AbcdPoliciesBase policies) {
    return policies.attributes
        .every((attribute) => includesAttribute(attribute));
  }
}
