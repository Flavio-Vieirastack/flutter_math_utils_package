import 'package:flutter_math_utils/flutter_math_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should return the correct number of sum', () {
    final sut = MathUtils.sum([2, 2]);
    expect(sut, 4);
  });
}
