import 'package:block_404/app/models/committee.dart';
import 'package:block_404/app/models/event.dart';

class Building {
  final int id;
  final String name;
  final String description;
  final Map<String, String> location;
  final int houses;
  final int floors;
  final String address;
  final Committee committee;
  final List<String>? attachments;
  final List<String>? pictures;
  final List<Event>? events;
  final DateTime createdAt;
  final DateTime updatedAt;
  Building({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.houses,
    required this.floors,
    required this.address,
    required this.committee,
    required this.attachments,
    required this.pictures,
    required this.events,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'location': location,
      'houses': houses,
      'floors': floors,
      'address': address,
      'committee': committee,
      'attachments': attachments,
      'pictures': pictures,
      'events': events,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory Building.fromMap(Map<String, dynamic> map) {
    Committee newCommittee = Committee.fromMap(map['committee']);
    return Building(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      location: map['location'],
      houses: map['houses'],
      floors: map['floors'],
      address: map['address'],
      committee: newCommittee,
      attachments: map['attachments'],
      pictures: map['pictures'],
      events: map['events'],
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }
}
