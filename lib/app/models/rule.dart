class Rule {
  final int id;
  final String description;
  final String? attachment;
  final String? picture;
  final DateTime createdAt;
  final DateTime updatedAt;
  Rule({
    required this.id,
    required this.description,
    required this.attachment,
    required this.picture,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'description': description,
      'attachment': attachment,
      'picture': picture,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory Rule.fromMap(Map<String, dynamic> map) {
    return Rule(
        id: map['id'],
        description: map['description'],
        attachment: map['attachmet'],
        picture: map['picture'],
        createdAt: DateTime.parse(map['created_at']),
        updatedAt: DateTime.parse(map['updated_at']));
  }
}
