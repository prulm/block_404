import 'package:block_404/app/models/user.dart';

class House {
  final int id;
  final String? description;
  final int floor;
  final String floorCode;
  final int bedrooms;
  final List<String> attachments;
  final List<String>? pictures;
  final List<User>? residents;
  final User owner;
  final DateTime createdAt;
  final DateTime updatedAt;
  House({
    required this.id,
    required this.description,
    required this.floor,
    required this.floorCode,
    required this.bedrooms,
    required this.attachments,
    required this.pictures,
    required this.residents,
    required this.owner,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'description': description,
      'floor': floor,
      'floor_code': floorCode,
      'bedrooms': bedrooms,
      'attachments': attachments,
      'pictures': pictures,
      'residents': residents,
      'owner': owner,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory House.fromMap(Map<String, dynamic> map) {
    List<User> tempResidents = [];
    map['residents'].forEach((user) => tempResidents.add(User.fromMap(user)));

    return House(
      id: map['id'],
      note: map['description'],
      floor: map['floor'],
      floorCode: map['floor_code'],
      bedrooms: map['bedrooms'],
      attachments: map['attachmets'],
      pictures: map['pictures'],
      residents: tempResidents,
      owner: User.fromMap(map['owner']),
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }
}
