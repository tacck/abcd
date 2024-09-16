import 'package:abcd/policy/abcd_policies_base.dart';
import 'package:abcd/policy/abcd_policy_base.dart';
import 'package:abcd/role/abcd_role_base.dart';
import 'package:flutter_test/flutter_test.dart';

import '../attribute/attribute_test_one.dart';
import '../attribute/attribute_test_three.dart';
import '../attribute/attribute_test_two.dart';

void main() {
  test('Attributes that are the same as the attributes the role has are equal.',
      () {
    final role = AbcdRoleBase(attributes: [AttributeTestOne()]);
    expect(role.includesAttribute(AttributeTestOne()), true);
  });

  test('Policy with attributes included in the role are included.', () {
    final policyOne = AbcdPolicyBase(attributes: [
      AttributeTestOne(),
    ]);
    final role = AbcdRoleBase(attributes: [
      AttributeTestOne(),
      AttributeTestTwo(),
    ]);
    expect(role.includesPolicy(policyOne), true);
  });

  test('Policies with attributes included in the role are included.', () {
    final policyOne = AbcdPolicyBase(attributes: [
      AttributeTestOne(),
    ]);
    final policyTwo = AbcdPolicyBase(attributes: [
      AttributeTestTwo(),
    ]);
    final policies = AbcdPoliciesBase(policies: [
      policyOne,
      policyTwo,
    ]);
    final role = AbcdRoleBase(attributes: [
      AttributeTestOne(),
      AttributeTestTwo(),
      AttributeTestThree(),
    ]);
    expect(role.includesPolicies(policies), true);
  });

  test('The role that has no attributes does not match any policies.', () {
    final role = AbcdRoleBase(attributes: []);
    final policyOne = AbcdPolicyBase(attributes: [
      AttributeTestOne(),
    ]);
    final policyTwo = AbcdPolicyBase(attributes: [
      AttributeTestTwo(),
    ]);
    final policies = AbcdPoliciesBase(policies: [
      policyOne,
      policyTwo,
    ]);
    expect(role.includesAttribute(AttributeTestOne()), false);
    expect(role.includesPolicy(policyOne), false);
    expect(role.includesPolicies(policies), false);
  });
}
