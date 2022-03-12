class MathUtils {
  MathUtils._();

  static num sum(List<num> numbers) {
    if (numbers.isNotEmpty) {
      num sum = 0;
      for (num number in numbers) {
        sum += number;
      }
      return sum;
    }
    throw Exception();
  }

  static num multiply (List<num> numbers) {
    if (numbers.isNotEmpty) {
      num product = 1;
      for (num number in numbers) {
        product *= number;
      }
      return product;
    }
    throw Exception();
  }

  static num subtract (List<num> numbers) {
    if (numbers.length > 1) {
      num difference = numbers[0];
      for (int i = 1; i < numbers.length; i++) {
        difference -= numbers[i];
      }
      return difference;
    }
    throw Exception();
  }
}
