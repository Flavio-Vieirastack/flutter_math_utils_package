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
    test('Should thow an exception with round and ceil true', () {
      const sut = MathUtils.sum;
      expect(() => sut([2, 2], roundDown: true, roundUp: true),
          throwsA(isA<ArgumentError>()));
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

    test('Should thow an exception with round and ceil true', () {
      const sut = MathUtils.multiply;
      expect(() => sut([2, 2], roundDown: true, roundUp: true),
          throwsA(isA<ArgumentError>()));
    });
  });

  group('subtration tests', () {
    test('Should return the correct number of subtraction', () {
      final sut = MathUtils.subtract([2, 2]);
      expect(sut, 0);
    });
    test('Should return the correct number of subtraction rounded to up', () {
      final sut = MathUtils.subtract([4.25, 2], roundUp: true);
      expect(sut, 3);
    });
    test('Should return the correct number of subtraction rounded to down', () {
      final sut = MathUtils.subtract([4.25, 2], roundDown: true);
      expect(sut, 2);
    });
    test('Should return the correct number of subtraction with doubles', () {
      final sut = MathUtils.subtract([2.5, 2.5]);
      expect(sut, 0);
    });
    test('Should thow an exception', () {
      const sut = MathUtils.subtract;
      expect(() => sut([]), throwsException);
    });
    test('Should thow an exception with round and ceil true', () {
      const sut = MathUtils.subtract;
      expect(() => sut([2, 2], roundDown: true, roundUp: true),
          throwsA(isA<ArgumentError>()));
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
    test('Should return the correct number of division rounded to up', () {
      final sut = MathUtils.divide([4.25, 2], roundUp: true);
      expect(sut, 3);
    });
    test('Should return the correct number of division rounded to down', () {
      final sut = MathUtils.divide([4.25, 2], roundDown: true);
      expect(sut, 2);
    });
    test('Should thow an exception', () {
      const sut = MathUtils.divide;
      expect(() => sut([]), throwsException);
    });
    test('Should thow an exception with round and ceil true', () {
      const sut = MathUtils.divide;
      expect(() => sut([2, 2], roundDown: true, roundUp: true),
          throwsA(isA<ArgumentError>()));
    });
  });

  group('Date tests', () {
    test('should return the correct date in days', () {
      DateTime date1 = DateTime.parse("2020-01-09 23:00:00.299871");
      DateTime date2 = DateTime.parse("2020-01-10 00:00:00.299871");
      final sut = MathUtils.daysBetween(fromDate: date1, toDate: date2);
      expect(sut, 1);
    });

    test('should return the correct date in moths', () {
      DateTime date1 = DateTime.parse("2020-01-09 23:00:00.299871");
      DateTime date2 = DateTime.parse("2020-02-10 00:00:00.299871");
      final sut = MathUtils.monthsBetween(initialDate: date1, endDate: date2);
      expect(sut, 1);
    });
    test('should return the correct date in moths second test', () {
      DateTime date1 = DateTime.parse("2020-01-09 23:00:00.299871");
      DateTime date2 = DateTime.parse("2020-12-10 00:00:00.299871");
      final sut = MathUtils.monthsBetween(initialDate: date1, endDate: date2);
      expect(sut, 11);
    });
  });

  group('percent test', () {
    test('should return the correct percentage of a number', () {
      final sut = MathUtils.percentOf(percent: 10, of: 100);
      expect(sut, 10);
    });
  });

  group('factorial test', () {
    test('should return the correct factorial of a number', () {
      final sut = MathUtils.factorialOf(number: 5);
      expect(sut, 120);
    });
    test('should return the correct factorial of a another number', () {
      final sut = MathUtils.factorialOf(number: 7);
      expect(sut, 5040);
    });
  });

  group('Rule of three test', () {
    test('should return the correct rule of three of a number', () {
      final sut = MathUtils.simpleRuleOfThree(
          number1: 6, number2: 25, inverselyProportionalNumber: 1);
      expect(sut, 150);
    });
    test('should return the correct rule of three of another number', () {
      final sut = MathUtils.simpleRuleOfThree(
          number1: 6, number2: 24, inverselyProportionalNumber: 8);
      expect(sut, 18);
    });
  });
}
