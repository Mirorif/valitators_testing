import 'package:flutter_test/flutter_test.dart';
import 'package:validators_testing/my_notification_package.dart';


void main() {
  test(
    'Email validation',
    () {
      expect(
        Validators.email(null),
        'Email is required',
      );
      expect(
        Validators.email(''),
        'Email is required',
      );
      expect(
        Validators.email('invalidemail'),
        'Invalid email format',
      );
      expect(
        Validators.email('test@example.com'),
        null,
      );
    },
  );

  test(
    'Password validation',
    () {
      expect(
        Validators.password(null),
        'Password is required',
      );
      expect(
        Validators.password(''),
        'Password is required',
      );
      expect(
        Validators.password('WeakPass1'),
        null,
      );
      expect(
        Validators.password('weak'),
        'Password must be at least 8 characters and include uppercase, lowercase, and a number',
      );
    },
  );
}
