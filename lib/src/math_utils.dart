
class MathUtils {
  MathUtils._();

  static num sum(List<num> numbers) {
    num sum = 0;
    for (num number in numbers) {
      sum += number;
    }
    return sum;
  }
}