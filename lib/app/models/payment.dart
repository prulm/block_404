import 'package:block_404/app/models/user.dart';

class Event {
  final int id;
  final String type;
  final String description;
  final String attachment;
  final User createdBy;
  final DateTime commences;
  final DateTime createdAt;
  final DateTime updatedAt;
  Event({
    required this.id,
    required this.type,
    required this.description,
    required this.attachment,
    required this.createdBy,
    required this.commences,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'description': description,
      'attachment': attachment,
      'created_by': createdBy,
      'commences': commences,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      id: map['id'],
      type: map['type'],
      description: map['description'],
      attachment: map['attachment'],
      createdBy: User.fromMap(map['created_by']),
      commences: map['commences'],
      createdAt: map['created_at'],
      updatedAt: map['updated_at'],
    );
  }
}
