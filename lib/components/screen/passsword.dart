import 'package:flutter/material.dart';

class InputPassword extends StatelessWidget {
  const InputPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: TextField(
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Password",
          labelText: "Password",
          prefixIcon: Icon(Icons.lock),
        ),
      ),
    );
  }
}
