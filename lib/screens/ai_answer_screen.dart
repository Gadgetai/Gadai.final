import 'package:flutter/material.dart';

class AiAnswerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AI Jawaban")),
      body: Center(
        child: Text("Masukkan pertanyaan, dan AI akan menjawab."),
      ),
    );
  }
}
