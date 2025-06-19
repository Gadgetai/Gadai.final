import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pengaturan")),
      body: Center(
        child: Text("Atur dark mode, bahasa, akun, dll."),
      ),
    );
  }
}
