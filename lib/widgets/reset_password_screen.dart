import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Відновлення")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.mark_email_unread_outlined, size: 80, color: Colors.indigo),
            const SizedBox(height: 20),

            const Text(
              "Забули пароль?",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Введіть свій логін або E-mail нижче, щоб отримати інструкції.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 30),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Логін або E-mail',
                prefixIcon: Icon(Icons.alternate_email),
              ),
            ),
            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Лист відправлено!')),
                );
                Navigator.pop(context);
              },
              child: const Text('Скинути пароль'),
            ),

            const SizedBox(height: 10),

            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Повернутися назад'),
            ),
          ],
        ),
      ),
    );
  }
}