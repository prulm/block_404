import 'package:block_404/app/models/user.dart';

class Event {
  final int id;
  final String name;
  final String description;
  final String? attachment;
  final double? penality;
  final User createdBy;
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
      'created_by': createdBy,
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
      createdBy: User.fromMap(map['created_by']),
      commences: map['commences'],
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }
}
