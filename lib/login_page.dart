import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Login")),
      body: Center(
        child: Text(
          "Ini Halaman Login!",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}