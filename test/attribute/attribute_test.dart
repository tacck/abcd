import 'package:flutter_test/flutter_test.dart';

import 'attribute_test_one.dart';
import 'attribute_test_two.dart';

void main() {
  test('The different attribute objects based on the same class is equal.', () {
    final attributeOne = AttributeTestOne();
    final attributeAnotherOne = AttributeTestOne();
    expect(attributeOne == attributeAnotherOne, true);
  });

  test(
      'The different attribute objects based on the different class is different.',
      () {
    final attributeOne = AttributeTestOne();
    final attributeTwo = AttributeTestTwo();
    expect(attributeOne == attributeTwo, false);
  });
}
