class AiResult {
  final String result;
  final double confidence;
  final String type;

  AiResult({
    required this.result,
    required this.confidence,
    required this.type,
  });

  factory AiResult.fromJson(Map<String, dynamic> json) {
    return AiResult(
      result: json['result'],
      confidence: json['confidence']?.toDouble() ?? 0.0,
      type: json['type'],
    );
  }
}
