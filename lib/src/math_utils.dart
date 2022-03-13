
class MathUtils {
  MathUtils._();

  static num sum(List<num> numbers, {bool? roundUp, bool? roundDown}) {
    final ceil = roundUp ?? false;
    final floor = roundDown ?? false;
    if (ceil && floor) {
      throw ArgumentError('Cannot have both roundUp and roundDown set to true');
    }
    if (numbers.isNotEmpty || numbers.length > 1) {
      num sum = 0;
      for (num number in numbers) {
        sum += number;
      }
      if (ceil) {
        return sum.ceil();
      }
      if (floor) {
        return sum.floor();
      }
      return sum;
    }
    throw Exception();
  }

  static num multiply(List<num> numbers, {bool? roundUp, bool? roundDown}) {
    final ceil = roundUp ?? false;
    final floor = roundDown ?? false;
    if (ceil && floor) {
      throw ArgumentError('Cannot have both roundUp and roundDown set to true');
    }
    if (numbers.isNotEmpty || numbers.length > 1) {
      num multiple = 1;
      for (num number in numbers) {
        multiple *= number;
      }
      if (ceil) {
        return multiple.ceil();
      }
      if (floor) {
        return multiple.floor();
      }
      return multiple;
    }
    throw Exception();
  }

  static num subtract(List<num> numbers, {bool? roundUp, bool? roundDown}) {
    final ceil = roundUp ?? false;
    final floor = roundDown ?? false;
    if (ceil && floor) {
      throw ArgumentError('Cannot have both roundUp and roundDown set to true');
    }
    if (numbers.isNotEmpty || numbers.length > 1) {
      num subtract = numbers[0];
      for (int i = 1; i < numbers.length; i++) {
        subtract -= numbers[i];
      }
      if (ceil) {
        return subtract.ceil();
      }
      if (floor) {
        return subtract.floor();
      }
      return subtract;
    }
    throw Exception();
  }

  static num divide(List<num> numbers, {bool? roundUp, bool? roundDown}) {
    final ceil = roundUp ?? false;
    final floor = roundDown ?? false;
    if (ceil && floor) {
      throw ArgumentError('Cannot have both roundUp and roundDown set to true');
    }
    if (numbers.isNotEmpty || numbers.length > 1) {
      num divide = numbers[0];
      for (int i = 1; i < numbers.length; i++) {
        divide /= numbers[i];
      }
      if (ceil) {
        return divide.ceil();
      }
      if (floor) {
        return divide.floor();
      }
      return divide;
    }
    throw Exception();
  }

  static int daysBetween(
      {required DateTime fromDate, required DateTime toDate}) {
    fromDate = DateTime(fromDate.year, fromDate.month, fromDate.day);
    toDate = DateTime(toDate.year, toDate.month, toDate.day);
    return (toDate.difference(fromDate).inHours / 24).round();
  }

  static int monthsBetween(
      {required DateTime initialDate, required DateTime endDate}) {
    return (endDate.year - initialDate.year) * 12 +
        (endDate.month - initialDate.month);
  }

  static num percentOf({required num percent, required num of}) {
    return (percent / 100) * of;
  }

  static num factorialOf({required num number}) {
    num factorial = 1;
    for (var i = number; i >= 1; i--) {
      factorial *= i;
    }
    return factorial;
  }

  static num simpleRuleOfThree(
      {required num number1, required num number2, required num inverselyProportionalNumber}) {
    return (number1 * number2) / inverselyProportionalNumber;
  }
  
}
