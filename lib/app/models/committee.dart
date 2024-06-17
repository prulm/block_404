import 'package:block_404/app/models/building.dart';
import 'package:block_404/app/models/rule.dart';
import 'package:block_404/app/models/user.dart';

class Committee {
  final int id;
  final String description;
  final String? attachments;
  final List<User> members;
  final User leader;
  final Building building;
  final List<Rule> committeeRules;
  final DateTime createdAt;
  final DateTime updatedAt;
  Committee({
    required this.id,
    required this.description,
    required this.attachments,
    required this.members,
    required this.leader,
    required this.building,
    required this.committeeRules,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'description': description,
      'attachments': attachments,
      'members': members,
      'leader': leader,
      'building': building,
      'committee_rules': committeeRules,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory Committee.fromMap(Map<String, dynamic> map) {
    List<User> tempMembers = [];
    List<Rule> tempRules = [];
    map['members'].forEach((user) => tempMembers.add(User.fromMap(user)));
    map['committee_rules'].forEach((rule) => tempRules.add(Rule.fromMap(rule)));
    return Committee(
      id: map['id'],
      description: map['description'],
      attachments: map['attachments'],
      members: tempMembers,
      leader: User.fromMap(map['leader']),
      building: Building.fromMap(map['building']),
      committeRules: tempRules,
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }
}
