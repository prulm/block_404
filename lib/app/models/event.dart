import 'package:block_404/app/models/penality.dart';
import 'package:block_404/app/models/resident.dart';

class Event {
  final int id;
  final String name;
  final String description;
  final String? attachment;
  final Penality penality;
  final Resident createdBy;
  final DateTime commences;
  final DateTime createdAt;
  final DateTime updatedAt;
  Event({
    required this.id,
    required this.name,
    required this.description,
    required this.attachment,
    required this.penality,
    required this.createdBy,
    required this.commences,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'attachment': attachment,
      'penality': penality,
      'creator': createdBy,
      'commences': commences,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      attachment: map['attachment'],
      penality: map['penality'],
      createdBy: Resident.fromMap(map['creator']),
      commences: DateTime.parse(map['commences']),
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }
}
