import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_and_widget_testing/app/presentation/utils/validator.dart';

void main() {
  setUp(() => {

    
  });
  test('isValidEmail', () {
    expect(isValidEmail('eliezer@gmail.com'), true);
    expect(isValidEmail('eliezergmail.com'), false);
    expect(isValidEmail('1eliezer@gmail.com'), false);
  });

  group('isValid password >', () {
    test('valid password', () {
      final errors = isValidPassword('testabc1A');
      expect(errors.isEmpty, true);
    });
    test('empty text', () {
      final errors = isValidPassword('testabc');
      expect(errors.contains(PasswordErrors.atLeast6Characters), false);
    });

    test('at Least 6 Characters', () {
      final errors = isValidPassword('testabc');
      expect(errors.contains(PasswordErrors.atLeast6Characters), false);
    });
    test('at Least 1 Upper Case', () {
      final errors = isValidPassword('testabc1Z');
      expect(errors.contains(PasswordErrors.atLeast1UpperCase), false);
    });
    test('at Least 1 Number', () {
      final errors = isValidPassword('testabc1');
      expect(errors.contains(PasswordErrors.atLeast1Number), false);
    });

    test('at Least 1 Number', () {
      final errors = isValidPassword('testabc1');
      expect(errors.contains(PasswordErrors.atLeast1Number), false);
    });
    test('empty text', () {
      final errors = isValidPassword('haha ha');
      expect(errors.contains(PasswordErrors.whiteSpaces), true);
    });
  });
}
