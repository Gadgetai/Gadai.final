import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gad Ai - Home'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: [
            _featureCard(
              context,
              icon: Icons.translate,
              title: 'Translator',
              onTap: () {
                // Navigasi ke fitur Translator
              },
            ),
            _featureCard(
              context,
              icon: Icons.question_answer,
              title: 'Tanya AI',
              onTap: () {
                // Navigasi ke fitur Tanya Jawab
              },
            ),
            _featureCard(
              context,
              icon: Icons.grid_on,
              title: 'TTS/Sudoku',
              onTap: () {
                // Navigasi ke fitur Teka-Teki
              },
            ),
            _featureCard(
              context,
              icon: Icons.auto_graph,
              title: 'Candle Stick',
              onTap: () {
                // Navigasi ke fitur analisa candlestick
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _featureCard(BuildContext context,
      {required IconData icon,
      required String title,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.deepPurple),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
