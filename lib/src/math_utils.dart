class MathUtils {
  MathUtils._();

  static num sum(List<num> numbers, {bool? roundUp, bool? roundDown}) {
    final ceil = roundUp ?? false;
    final floor = roundDown ?? false;
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

  static num divide(List<num> numbers) {
    if (numbers.isNotEmpty || numbers.length > 1) {
      num divide = numbers[0];
      for (int i = 1; i < numbers.length; i++) {
        divide /= numbers[i];
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

  static int monthBetween(
      {required DateTime initialDate, required DateTime endDate}) {
    return (endDate.year - initialDate.year) * 12 +
        (endDate.month - initialDate.month) +
        1;
  }
}
