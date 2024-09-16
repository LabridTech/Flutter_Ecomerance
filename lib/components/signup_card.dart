import 'package:flutter/material.dart';

class SignupCard extends StatelessWidget {
  SignupCard({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 100,
        right: 10,
        left: 10,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your Password',
                  border: OutlineInputBorder(),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your Country',
                  border: OutlineInputBorder(),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your City',
                  border: OutlineInputBorder(),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your Address',
                  border: OutlineInputBorder(),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your Card Numeber',
                  border: OutlineInputBorder(),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your Postal Code',
                  border: OutlineInputBorder(),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 10,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Validate will return true if the form is valid, or false if
                    // the form is invalid.
                    if (_formKey.currentState!.validate()) {
                      // Process data.
                    }
                  },
                  child: const Center(
                    child: Text('SignUp'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
