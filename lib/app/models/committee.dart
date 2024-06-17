import 'package:block_404/app/models/rule.dart';
import 'package:block_404/app/models/user.dart';

class Committee {
  final int id;
  final String description;
  final List<User> members;
  final User leader;
  final Building building;
  final List<Rule> committeeRules;
  final DateTime createdAt;
  final DateTime updatedAt;
  Report({
    required this.id,
    required this.name,
    required this.description,
    required this.attachments,
    required this.pictures,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'attachments': attachments,
      'pictures': pictures,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory Report.fromMap(Map<String, dynamic> map) {
    return Report(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      attachments: map['attachments'],
      pictures: map['pictures'],
      createdAt: map['created_at'],
      updatedAt: map['updated_at'],
    );
  }
}
