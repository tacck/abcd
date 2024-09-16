import 'package:abcd/policy/abcd_policy_base.dart';

class AbcdPoliciesBase {
  AbcdPoliciesBase({
    required List<AbcdPolicyBase> policies,
  }) : _policies = policies;

  final List<AbcdPolicyBase> _policies;

  get attributes => _policies.expand((p) => p.attributes).toSet().toList();
}
