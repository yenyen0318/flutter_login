import 'package:flutter/material.dart';

import '../components/icon_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const IconTextField(
              prefixIcon: Icon(Icons.email),
              hintText: 'Email',
            ),
            const IconTextField(
              prefixIcon: Icon(Icons.key),
              hintText: 'Password',
              obscureText: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                        activeColor: Theme.of(context).colorScheme.primary,
                        value: false,
                        onChanged: ((value) {})),
                    const Text('Remember me'),
                  ],
                ),
                const Text('Forgot Password?'),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Divider(
                thickness: 2,
              ),
            ),
            const Text(
                'If you have any questions, please send me a letter, contact mailbox: janis03050055@gmail.com'),
          ],
        ));
  }
}
