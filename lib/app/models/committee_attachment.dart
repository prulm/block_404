class Attachment {
  final int id;
  final String file;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  Attachment({
    required this.id,
    required this.file,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'file': file,
      'description': description,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory Attachment.fromMap(Map<String, dynamic> map) {
    return Attachment(
      id: map['id'],
      file: map['file'],
      description: map['description'],
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }
}
