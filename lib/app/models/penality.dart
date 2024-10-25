class Penality {
  final int id;
  final String reason;
  final double amount;
  final DateTime createdAt;
  final DateTime updatedAt;
  Penality({
    required this.id,
    required this.reason,
    required this.amount,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'reason': reason,
      'amount': amount,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory Penality.fromMap(Map<String, dynamic> map) {
    return Penality(
      id: map['id'],
      reason: map['reason'],
      amount: map['amount'],
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }
}
