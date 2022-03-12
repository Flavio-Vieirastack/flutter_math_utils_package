class MathUtils {
  MathUtils._();

  static num sum(List<num> numbers) {
    if (numbers.isNotEmpty || numbers.length > 1) {
      num sum = 0;
      for (num number in numbers) {
        sum += number;
      }
      return sum;
    }
    throw Exception();
  }

  static num multiply(List<num> numbers) {
    if (numbers.isNotEmpty || numbers.length > 1) {
      num product = 1;
      for (num number in numbers) {
        product *= number;
      }
      return product;
    }
    throw Exception();
  }

  static num subtract(List<num> numbers) {
    if (numbers.isNotEmpty || numbers.length > 1) {
      num difference = numbers[0];
      for (int i = 1; i < numbers.length; i++) {
        difference -= numbers[i];
      }
      return difference;
    }
    throw Exception();
  }

  static num divide(List<num> numbers) {
    if (numbers.isNotEmpty || numbers.length > 1) {
      num quotient = numbers[0];
      for (int i = 1; i < numbers.length; i++) {
        quotient /= numbers[i];
      }
      return quotient;
    }
    throw Exception();
  }

  static int daysBetween(DateTime fromDate, DateTime toDate) {
    fromDate = DateTime(fromDate.year, fromDate.month, fromDate.day);
    toDate = DateTime(toDate.year, toDate.month, toDate.day);
    return (toDate.difference(fromDate).inHours / 24).round();
  }
}
