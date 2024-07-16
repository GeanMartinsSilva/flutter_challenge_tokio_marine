import 'package:flutter_challenge_tokio_marine/app/_core/utils/validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Validator', () {
    final validator = Validator();

    test('valid CPF returns true', () {
      expect(validator.isValidCPF('12345678909'), isTrue);
    });

    test('invalid CPF returns false', () {
      expect(validator.isValidCPF('12345678900'), isFalse);
    });

    test('valid password returns true', () {
      expect(validator.isValidPassword('123456'), isTrue);
    });

    test('invalid password returns false', () {
      expect(validator.isValidPassword('12345'), isFalse);
      expect(validator.isValidPassword('123456789'), isFalse);
    });
  });
}
