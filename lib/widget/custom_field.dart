import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    required TextEditingController usernameController,
  }) : _usernameController = usernameController;

  final TextEditingController _usernameController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _usernameController,
      decoration: InputDecoration(
        labelText: 'Username',
        border: OutlineInputBorder(),
      ),
    );
  }
}