import 'package:block_404/app/models/penality.dart';
import 'package:block_404/app/models/resident.dart';

class Payment {
  final int id;
  final String name;
  final String type;
  final String description;
  final String? attachment;
  final DateTime deadline;
  final Penality penality;
  final double amount;
  final Resident collector;
  final bool isRecurring;
  final int recurrencePeriod;
  final DateTime createdAt;
  final DateTime updatedAt;
  Payment({
    required this.id,
    required this.name,
    required this.type,
    required this.description,
    required this.attachment,
    required this.deadline,
    required this.penality,
    required this.amount,
    required this.collector,
    required this.isRecurring,
    required this.recurrencePeriod,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'description': description,
      'deadline': deadline,
      'penality': penality,
      'amount': amount,
      'collector': collector,
      'isRecurring': isRecurring,
      'recurrence_period': recurrencePeriod,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory Payment.fromMap(Map<String, dynamic> map) {
    return Payment(
      id: map['id'],
      name: map['name'],
      type: map['type'],
      description: map['description'],
      attachment: map['attachment'],
      deadline: DateTime.parse(map['deadline']),
      amount: map['amount'],
      penality: Penality.fromMap(map['penality']),
      collector: Resident.fromMap(map['collector']),
      isRecurring: map['isRecurring'],
      recurrencePeriod: map['recurrence_period'],
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }
}
