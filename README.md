

## Features

This package will help you implement calcs in your project, such as: Sums, divisions, multiplications, percentages, difference between dates and simple rule of 3 in a simple way

## Getting started

first of all import the package

`import 'src/math_utils.dart';`

## Usage

**if you want to do calculations of several numbers at once, just pass your list of numbers like this:**

`final myResult = MathUtils.sum([2, 2]);`

`final myResult = MathUtils.multiply([2, 2]);`

`final myResult = MathUtils.subtract([2, 2]);`

`final myResult = MathUtils.divide([2, 2]);`

**Was your result too big? Do you want to round it, is simple**

`final myResult = MathUtils.sum([2, 2.5], roundUp: true);`

`final myResult = MathUtils.sum([2, 2.5], roundDown: true);`

`final myResult = MathUtils.multiply([2, 2.25], roundUp: true);`

`final myResult = MathUtils.multiply([2, 2.25], roundDown: true);`

`final myResult = MathUtils.subtract([4.25, 2], roundUp: true);`

`final myResult = MathUtils.subtract([4.25, 2], roundDown: true);`

`final myResult = MathUtils.divide([4.25, 2], roundUp: true);`

`final myResult = MathUtils.divide([4.25, 2], roundDown: true);`

**Do you want to know the difference between two dates in days?**

```
      DateTime date1 = DateTime.parse("2020-01-09 23:00:00.299871");
      DateTime date2 = DateTime.parse("2020-01-10 00:00:00.299871");
      final days = MathUtils.daysBetween(fromDate: date1, toDate: date2);
```

**But what if I want to know the difference in months?**

```
      DateTime date1 = DateTime.parse("2020-01-09 23:00:00.299871");
      DateTime date2 = DateTime.parse("2020-02-10 00:00:00.299871");
      final months = MathUtils.monthsBetween(initialDate: date1, endDate: date2);

```

**But what about the percentage? I want to know what is X% of a number X, simple**

`final myResult = MathUtils.percentOf(percent: 10, of: 100);`

**For my project I need to know what the factorial of a number x**


`final myResult = MathUtils.factorialOf(number: 5);`

**And the rule of three?**

My company spends 6 pieces of plastic to produce one fan. How many parts are needed to produce 25 fans?
```
final myResult = MathUtils.simpleRuleOfThree(
          number1: 6, number2: 25, inverselyProportionalNumber: 1);

```

A sewing company with 6 seamstresses is able to complete a service request in 24 days. In order to do the same job with 8 seamstresses, how many days will it take to complete it?

```
final myResult = MathUtils.simpleRuleOfThree(
          number1: 6, number2: 24, inverselyProportionalNumber: 8);

```

## Additional information

This package is in evolution if you want to participate in the project feel free to contribute
