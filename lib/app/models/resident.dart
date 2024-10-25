import 'package:block_404/app/models/user.dart';

class Resident {
  final int id;
  final User user;
  final bool isHead;
  final bool isOwner;
  final bool isActive;
  final DateTime createdAt;
  final DateTime updatedAt;
  Resident({
    required this.id,
    required this.user,
    required this.isHead,
    required this.isOwner,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'user': user,
      'isHead': isHead,
      'isOwner': isOwner,
      'isActive': isActive,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory Resident.fromMap(Map<String, dynamic> map) {
    return Resident(
      id: map['id'],
      user: User.fromMap(map['owner']),
      isHead: map['isHead'],
      isOwner: map['isOwner'],
      isActive: map['isActive'],
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }
}
