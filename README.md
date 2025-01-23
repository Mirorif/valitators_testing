Form Validation Package
A simple and lightweight Flutter package for validating form inputs such as email addresses, passwords, and required fields. This package helps developers build robust forms quickly and efficiently by providing commonly used validation rules.

Features
Email Validation: Ensures email input follows the correct format.
Password Strength Validation: Enforces strong password rules (minimum 8 characters, at least one uppercase, one lowercase, and one number).
Required Fields Validation: Checks if mandatory fields are filled.
Custom Error Messages: Displays user-friendly error messages for invalid inputs.
Getting Started
Installation
Add the package to your project by including it in the pubspec.yaml file under dependencies:

yaml
Copy code
dependencies:
form_validation: ^0.0.1
Run the following command to install the package:

bash
Copy code
flutter pub get
Usage
Import the package into your Dart file:

dart
Copy code
import 'package:form_validation/form_validation.dart';
Example
Below is a simple example of how to use the Form Validation Package in a Flutter app:

dart
Copy code
import 'package:flutter/material.dart';
import 'package:form_validation/form_validation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
appBar: AppBar(title: Text('Form Validation Example')),
body: MyForm(),
),
);
}
}

class MyForm extends StatelessWidget {
final _formKey = GlobalKey<FormState>();

@override
Widget build(BuildContext context) {
return Form(
key: _formKey,
child: Padding(
padding: const EdgeInsets.all(16.0),
child: Column(
children: [
TextFormField(
decoration: InputDecoration(labelText: 'Email'),
validator: validateEmail,
),
TextFormField(
decoration: InputDecoration(labelText: 'Password'),
validator: validatePassword,
obscureText: true,
),
SizedBox(height: 16.0),
ElevatedButton(
onPressed: () {
if (_formKey.currentState?.validate() ?? false) {
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(content: Text('Form is valid')),
);
}
},
child: Text('Submit'),
),
],
),
),
);
}
}
Validation Rules
The package includes the following built-in validation functions:

validateEmail(String? value)
Ensures the input is a valid email address.
Example:

dart
Copy code
validator: validateEmail,
validatePassword(String? value)
Checks password strength (minimum 8 characters, at least one uppercase letter, one lowercase letter, and one number).
Example:

dart
Copy code
validator: validatePassword,
validateRequired(String? value)
Verifies that the input is not empty.
Example:

dart
Copy code
validator: validateRequired,
Testing
To test the package, run the following command:

bash
Copy code
flutter test
This ensures that all validation rules are working correctly.

Contributing
We welcome contributions! If you’d like to improve the package, please follow these steps:

Fork the repository on GitHub.
Create a feature branch: git checkout -b feature-name.
Commit your changes: git commit -m 'Add some feature'.
Push to the branch: git push origin feature-name.
Create a pull request.
License
This package is licensed under the MIT License. See the LICENSE file for more details.

Feedback
If you encounter any issues or have suggestions for improvement, feel free to open an issue on the GitHub repository.

