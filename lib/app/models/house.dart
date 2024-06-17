import 'package:block_404/app/models/user.dart';

class House {
  final int id;
  final String? note;
  final int floor;
  final String floorCode;
  final int bedrooms;
  final List<String> attachments;
  final List<String>? pictures;
  final User? currentResident;
  final User owner;
  final DateTime createdAt;
  final DateTime updatedAt;
  House({
    required this.id,
    required this.note,
    required this.floor,
    required this.floorCode,
    required this.bedrooms,
    required this.attachments,
    required this.pictures,
    required this.currentResident,
    required this.owner,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'note': note,
      'floor': floor,
      'floor_code': floorCode,
      'bedrooms': bedrooms,
      'attachments': attachments,
      'pictures': pictures,
      'current_resident': currentResident,
      'owner': owner,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory House.fromMap(Map<String, dynamic> map) {
    return House(
      id: map['id'],
      note: map['note'],
      floor: map['description'],
      floorCode: map['floor_code'],
      bedrooms: map['bedrooms'],
      attachments: map['attachmets'],
      pictures: map['pictures'],
      currentResident: User.fromMap(map['current_resident']),
      owner: User.fromMap(map['owner']),
      createdAt: map['created_at'],
      updatedAt: map['updated_at'],
    );
  }
}
