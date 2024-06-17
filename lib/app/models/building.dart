class Building {
  final int id;
  final String name;
  final String description;
  final Map<String, String> location;
  final int houses;
  final int floors;
  final List<String>? attachments;
  final List<String>? pictures;
  final DateTime createdAt;
  final DateTime updatedAt;
  Building({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.houses,
    required this.floors,
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
      'location': location,
      'houses': houses,
      'floors': floors,
      'attachments': attachments,
      'pictures': pictures,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory Building.fromMap(Map<String, dynamic> map) {
    return Building(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      location: map['location'],
      houses: map['houses'],
      floors: map['floors'],
      attachments: map['attachments'],
      pictures: map['pictures'],
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: map['updated_at'],
    );
  }
}
