class Rule {
  final int id;
  final String rule;
  final int order;
  final String? picture;
  final DateTime createdAt;
  final DateTime updatedAt;
  Rule({
    required this.id,
    required this.rule,
    required this.order,
    required this.picture,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'rule': rule,
      'order': order,
      'picture': picture,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory Rule.fromMap(Map<String, dynamic> map) {
    return Rule(
        id: map['id'],
        rule: map['rule'],
        order: map['order'],
        picture: map['picture'],
        createdAt: DateTime.parse(map['created_at']),
        updatedAt: DateTime.parse(map['updated_at']));
  }
}
