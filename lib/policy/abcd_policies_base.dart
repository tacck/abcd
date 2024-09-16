import 'package:abcd/policy/abcd_policy_base.dart';

class AbcdPoliciesBase {
  AbcdPoliciesBase({
    required this.policies,
  });

  final List<AbcdPolicyBase> policies;

  get attributes => policies.expand((p) => p.attributes).toSet().toList();
}
