/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/errorhandling_user_input_validator_base.dart';

/*
Practice Question 3: User Input Validator

Task:

Create a function named validateUserInput that takes a user input string and 
validates it against a set of rules 
(e.g., not empty, certain length (at least 6 characters), contains specific characters, etc.). 
Create a custom exception InvalidUserInputException for any violations.
 */

bool validateUserInput(String input) {
  return RegExp(r'^[\w]{6,}$').hasMatch(input)
      ? true
      : throw InvalidUserInputException(
          "User input was invalid! Input provided: $input");
}

class InvalidUserInputException implements Exception {
  String message;
  InvalidUserInputException(this.message);
}
