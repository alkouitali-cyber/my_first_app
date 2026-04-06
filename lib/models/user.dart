class User {
  final String id;
  final String name;
  final String? email;

  User({required this.id, required this.name, this.email});

  @override
  String toString() => 'User(id: $id, name: $name, email: $email)';
}
