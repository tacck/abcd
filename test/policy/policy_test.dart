import 'package:abcd/policy/abcd_policies_base.dart';
import 'package:abcd/policy/abcd_policy_base.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import '../attribute/attribute_test_one.dart';
import '../attribute/attribute_test_three.dart';
import '../attribute/attribute_test_two.dart';

void main() {
  group('Test for AbcdPolicyBase', () {
    test('The different policy objects have no attributes that are the same.',
        () {
      final policyOne = AbcdPolicyBase(attributes: []);
      final policyTwo = AbcdPolicyBase(attributes: []);
      expect(listEquals(policyOne.attributes, policyTwo.attributes), true);
    });

    test('The different policy objects have same attribute that are the same.',
        () {
      final policyOne = AbcdPolicyBase(attributes: [
        AttributeTestOne(),
        AttributeTestTwo(),
      ]);
      final policyTwo = AbcdPolicyBase(attributes: [
        AttributeTestOne(),
        AttributeTestTwo(),
      ]);
      expect(listEquals(policyOne.attributes, policyTwo.attributes), true);
    });

    test(
        'The different policy objects have other attributes that are different.',
        () {
      final policyOne = AbcdPolicyBase(attributes: [
        AttributeTestOne(),
        AttributeTestTwo(),
      ]);
      final policyTwo = AbcdPolicyBase(attributes: [
        AttributeTestOne(),
        AttributeTestThree(),
      ]);
      expect(listEquals(policyOne.attributes, policyTwo.attributes), false);
    });
  });

  group('Test for AbcdPoliciesBase', () {
    test('The different policies objects have no policy that are the same.',
        () {
      final policiesOne = AbcdPoliciesBase(policies: []);
      final policiesTwo = AbcdPoliciesBase(policies: []);
      expect(listEquals(policiesOne.attributes, policiesTwo.attributes), true);
    });

    test(
        'The different policy objects have same attribute policy that are the same.',
        () {
      final policyOne = AbcdPolicyBase(attributes: [
        AttributeTestOne(),
        AttributeTestTwo(),
      ]);
      final policyTwo = AbcdPolicyBase(attributes: [
        AttributeTestOne(),
        AttributeTestTwo(),
      ]);

      final policiesOne = AbcdPoliciesBase(policies: [policyOne]);
      final policiesTwo = AbcdPoliciesBase(policies: [policyTwo]);
      expect(listEquals(policiesOne.attributes, policiesTwo.attributes), true);
    });

    test(
        'The different policy objects have same attribute policy that are the same.',
        () {
      final policyOne = AbcdPolicyBase(attributes: [
        AttributeTestOne(),
        AttributeTestTwo(),
        AttributeTestThree(),
      ]);
      final policyTwo = AbcdPolicyBase(attributes: [
        AttributeTestOne(),
        AttributeTestTwo(),
      ]);
      final policyThree = AbcdPolicyBase(attributes: [
        AttributeTestOne(),
        AttributeTestThree(),
      ]);

      final policiesOne = AbcdPoliciesBase(policies: [
        policyOne,
      ]);
      final policiesTwo = AbcdPoliciesBase(policies: [
        policyTwo,
        policyThree,
      ]);
      expect(listEquals(policiesOne.attributes, policiesTwo.attributes), true);
    });

    test(
        'The different policy objects have other attributes policy that are different.',
        () {
      final policyOne = AbcdPolicyBase(attributes: [
        AttributeTestOne(),
        AttributeTestTwo(),
      ]);
      final policyTwo = AbcdPolicyBase(attributes: [
        AttributeTestOne(),
        AttributeTestThree(),
      ]);

      final policiesOne = AbcdPoliciesBase(policies: [policyOne]);
      final policiesTwo = AbcdPoliciesBase(policies: [policyTwo]);
      expect(listEquals(policiesOne.attributes, policiesTwo.attributes), false);
    });
  });
}
