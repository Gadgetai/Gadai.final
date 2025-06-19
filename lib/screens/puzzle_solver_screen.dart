import 'package:flutter/material.dart';

class PuzzleSolverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Puzzle Solver")),
      body: Center(
        child: Text("Solve Crypto Puzzles, Sudoku, TTS here."),
      ),
    );
  }
}
