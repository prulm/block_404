import 'package:block_404/app/models/committee.dart';
import 'package:block_404/app/models/event.dart';
import 'package:block_404/app/models/house.dart';

class Building {
  final int id;
  final String name;
  final String description;
  final int housesPerFloor;
  final int floors;
  final String location;
  final List<Committee> committee;
  final List<String>? attachments;
  final List<String>? pictures;
  final List<Event>? events;
  final List<House> houses;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  Building({
    required this.id,
    required this.name,
    required this.description,
    required this.housesPerFloor,
    required this.floors,
    required this.location,
    required this.committee,
    required this.attachments,
    required this.pictures,
    required this.events,
    required this.houses,
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
      'housesPerFloor': housesPerFloor,
      'committee': committee,
      'attachments': attachments,
      'pictures': pictures,
      'events': events,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory Building.fromMap(Map<String, dynamic> map) {
    List<Committee> tempCommittee = [];
    List<House> tempHouse = [];
    List<Event> tempEvent = [];
    map['committee'].forEach(
        (committee) => tempCommittee.add(Committee.fromMap(committee)));
    map['houses'].forEach((house) => tempHouse.add(House.fromMap(house)));
    map['events'].forEach((event) => tempEvent.add(Event.fromMap(event)));
    return Building(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      location: map['location'],
      houses: tempHouse,
      floors: map['floors'],
      housesPerFloor: map['housesPerFloor'],
      committee: tempCommittee,
      attachments: map['attachments'],
      pictures: map['pictures'],
      events: tempEvent,
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }
}
