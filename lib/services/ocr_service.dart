import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'dart:io';

class OCRService {
  final textRecognizer = TextRecognizer();

  Future<String> scanTextFromImage(File imageFile) async {
    final inputImage = InputImage.fromFile(imageFile);
    final recognizedText = await textRecognizer.processImage(inputImage);
    return recognizedText.text;
  }

  void dispose() {
    textRecognizer.close();
  }
}
