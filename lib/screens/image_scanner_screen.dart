import 'package:flutter/material.dart';

class ImageScannerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scanner Gambar")),
      body: Center(
        child: Text("Fitur scan gambar atau teks tanpa upload."),
      ),
    );
  }
}
