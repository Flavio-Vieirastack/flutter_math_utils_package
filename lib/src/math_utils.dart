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
      num multiple = 1;
      for (num number in numbers) {
        multiple *= number;
      }
      return multiple;
    }
    throw Exception();
  }

  static num subtract(List<num> numbers) {
    if (numbers.isNotEmpty || numbers.length > 1) {
      num subtract = numbers[0];
      for (int i = 1; i < numbers.length; i++) {
        subtract -= numbers[i];
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

  static int daysBetween(DateTime fromDate, DateTime toDate) {
    fromDate = DateTime(fromDate.year, fromDate.month, fromDate.day);
    toDate = DateTime(toDate.year, toDate.month, toDate.day);
    return (toDate.difference(fromDate).inHours / 24).round();
  }

  static int monthBetween(DateTime initialDate, DateTime endDate){
    return (endDate.year-initialDate.year)*12+(endDate.month-initialDate.month)+1;
  }
}
