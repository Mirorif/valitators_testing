import 'package:flutter/material.dart';
import 'package:validators_testing/validators_testing.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

  MyForm({super.key});

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
              validator: Validators.email,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              validator: Validators.password,
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
