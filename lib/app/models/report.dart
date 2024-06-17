class Report {
  final int id;
  final String name;
  final String description;
  final List<String>? attachments;
  final List<String>? pictures;
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
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }
}
