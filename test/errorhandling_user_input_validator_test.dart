import 'package:errorhandling_user_input_validator/errorhandling_user_input_validator.dart';
import 'package:test/test.dart';

void main() {
  group('User Input Validation Tests', () {
    test('Valid input', () {
      expect(() => validateUserInput('ValidInput123'), returnsNormally);
    });

    test('Input is too short throws InvalidUserInputException', () {
      expect(() => validateUserInput('short'),
          throwsA(isA<InvalidUserInputException>()));
    });

    test('Input is empty throws InvalidUserInputException', () {
      expect(() => validateUserInput(''),
          throwsA(isA<InvalidUserInputException>()));
    });

    test('Input with invalid characters throws InvalidUserInputException', () {
      expect(() => validateUserInput('Invalid#Input'),
          throwsA(isA<InvalidUserInputException>()));
    });
  });
}