import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/icon_text_field.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: const [
            IconTextField(
              prefixIcon: Icon(Icons.person),
              hintText: 'User Name',
            ),
            IconTextField(
              prefixIcon: Icon(Icons.email),
              hintText: 'Email',
            ),
            IconTextField(
              prefixIcon: Icon(Icons.key),
              hintText: 'Password',
              obscureText: true,
            ),
            IconTextField(
              prefixIcon: Icon(Icons.key),
              hintText: 'Confirm Password',
              obscureText: true,
            ),
          ],
        ));
  }
}
