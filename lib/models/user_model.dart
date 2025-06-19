class UserModel {
  final String id;
  final String email;
  final bool isPremium;
  final DateTime createdAt;

  UserModel({
    required this.id,
    required this.email,
    required this.isPremium,
    required this.createdAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      isPremium: json['isPremium'] ?? false,
      createdAt: DateTime.parse(json['createdAt']),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'isPremium': isPremium,
        'createdAt': createdAt.toIso8601String(),
      };
}
