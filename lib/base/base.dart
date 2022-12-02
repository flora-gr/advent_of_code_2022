import 'dart:io';

Future<void> calculate(int day) async {
  final List<String> example =
      await File('./input/day$day/example').readAsLines();
  final List<String> input = await File('./input/day$day/input').readAsLines();

  final int firstExampleSolution = calculateFirst(example);
  final int secondExampleSolution = calculateSecond(example);

  print('Solutions day $day:\n'
      'First part example: $firstExampleSolution, '
      'which is ${firstExampleSolution == exampleAnswerFirst ? 'correct' : 'incorrect'}\n'
      'First part solution: ${calculateFirst(input)}\n'
      'Second part example: $secondExampleSolution, '
      'which is ${secondExampleSolution == exampleAnswerSecond ? 'correct' : 'incorrect'}\n'
      'Second part solution: ${calculateSecond(input)}\n');
}

late int Function(List<String> dataLines) calculateFirst;
late int Function(List<String> dataLines) calculateSecond;
late int exampleAnswerFirst;
late int exampleAnswerSecond;