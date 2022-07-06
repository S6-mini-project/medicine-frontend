class User {
  final String name;
  final String email;

  const User({
    required this.name,
    required this.email,
  });

  User copy({
    String? name,
    String? email,
  }) =>
      User(
        name: name ?? this.name,
        email: email ?? this.email,
      );

  static User fromJson(Map<String, dynamic> json) => User(
        name: json['name'],
        email: json['email'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
      };
}
