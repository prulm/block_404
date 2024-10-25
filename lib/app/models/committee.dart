import 'package:block_404/app/models/committee_attachment.dart';
import 'package:block_404/app/models/committee_picture.dart';
import 'package:block_404/app/models/report.dart';
import 'package:block_404/app/models/resident.dart';
import 'package:block_404/app/models/rule.dart';

class Committee {
  final int id;
  final String name;
  final String description;
  final List<Attachment> attachments;
  final List<Picture> pictures;
  final List<Resident> members;
  final List<Rule> rules;
  final List<Report> reports;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  Committee({
    required this.id,
    required this.name,
    required this.description,
    required this.attachments,
    required this.pictures,
    required this.members,
    required this.rules,
    required this.reports,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'committee_attachments': attachments,
      'committee_pictures': pictures,
      'members': members,
      'rules': rules,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory Committee.fromMap(Map<String, dynamic> map) {
    List<Resident> tempMembers = [];
    List<Rule> tempRules = [];
    List<Attachment> tempAttachments = [];
    List<Picture> tempPictures = [];
    List<Report> tempReports = [];
    map['members'].forEach((resident) => tempMembers.add(Resident.fromMap(resident)));
    map['rules'].forEach((rule) => tempRules.add(Rule.fromMap(rule)));
    map['attachments'].forEach(
        (attachment) => tempAttachments.add(Attachment.fromMap(attachment)));
    map['pictures']
        .forEach((picture) => tempPictures.add(Picture.fromMap(picture)));
    map['reports'].forEach((report) => tempReports.add(Report.fromMap(report)));
    return Committee(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      attachments: tempAttachments,
      pictures: tempPictures,
      members: tempMembers,
      rules: tempRules,
      reports: tempReports,
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }
}
