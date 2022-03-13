import 'package:flutter_math_utils/flutter_math_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('sum tests', () {
    test('Should return the correct number of sum', () {
      final sut = MathUtils.sum([2, 2]);
      expect(sut, 4);
    });
    test('Should return the correct number of sum rounded to up', () {
      final sut = MathUtils.sum([2, 2.5], roundUp: true);
      expect(sut, 5);
    });
    test('Should return the correct number of sum rounded to down', () {
      final sut = MathUtils.sum([2, 2.5], roundDown: true);
      expect(sut, 4);
    });
    test('Should return the correct number of sum with doubles', () {
      final sut = MathUtils.sum([2.5, 2.5]);
      expect(sut, 5);
    });
    test('Should thow an exception', () {
      const sut = MathUtils.sum;
      expect(() => sut([]), throwsException);
    });
  });

  group('multiply tests', () {
    test('Should return the correct number of multiply', () {
      final sut = MathUtils.multiply([2, 2]);
      expect(sut, 4);
    });
    test('Should return the correct number of multiply rounded to up', () {
      final sut = MathUtils.multiply([2, 2.25], roundUp: true);
      expect(sut, 5);
    });
    test('Should return the correct number of multiply rounded to down', () {
      final sut = MathUtils.multiply([2, 2.25], roundDown: true);
      expect(sut, 4);
    });
    test('Should return the correct number of multiply with doubles', () {
      final sut = MathUtils.multiply([2.5, 2.5]);
      expect(sut, 6.25);
    });
    test('Should thow an exception', () {
      const sut = MathUtils.multiply;
      expect(() => sut([]), throwsException);
    });
  });

  group('subtration tests', () {
    test('Should return the correct number of subtraction', () {
      final sut = MathUtils.subtract([2, 2]);
      expect(sut, 0);
    });
    test('Should return the correct number of subtraction with doubles', () {
      final sut = MathUtils.subtract([2.5, 2.5]);
      expect(sut, 0);
    });
    test('Should thow an exception', () {
      const sut = MathUtils.subtract;
      expect(() => sut([]), throwsException);
    });
  });

  group('divide tests', () {
    test('Should return the correct number of division', () {
      final sut = MathUtils.divide([2, 2]);
      expect(sut, 1);
    });
    test('Should return the correct number of division with doubles', () {
      final sut = MathUtils.divide([2.5, 2.5]);
      expect(sut, 1);
    });
    test('Should thow an exception', () {
      const sut = MathUtils.divide;
      expect(() => sut([]), throwsException);
    });
  });

  group('Date tests', () {
    test('should return the correct date', (){
      DateTime date1 = DateTime.parse("2020-01-09 23:00:00.299871");
      DateTime date2 = DateTime.parse("2020-01-10 00:00:00.299871");
      final sut = MathUtils.daysBetween(fromDate: date1, toDate:  date2);
      expect(sut, 1);
    });
  });
}
