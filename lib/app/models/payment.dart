import 'package:block_404/app/models/user.dart';

class Payment {
  final int id;
  final String name;
  final String description;
  final DateTime deadline;
  final double? penality;
  final User collector;
  final bool isRecurring;
  final DateTime createdAt;
  final DateTime updatedAt;
  Payment({
    required this.id,
    required this.name,
    required this.description,
    required this.deadline,
    required this.penality,
    required this.collector,
    required this.isRecurring,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'deadline': deadline,
      'penality': penality,
      'collector': collector,
      'is_recurring': isRecurring,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory Payment.fromMap(Map<String, dynamic> map) {
    return Payment(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      deadline: map['deadline'],
      penality: map['penality'],
      collector: User.fromMap(map['collector']),
      isRecurring: map['is_recurring'],
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: map['updated_at'],
    );
  }
}
