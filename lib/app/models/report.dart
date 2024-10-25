class Report {
  final int id;
  final String title;
  final String description;
  final String? file;
  final DateTime createdAt;
  final DateTime updatedAt;
  Report({
    required this.id,
    required this.title,
    required this.description,
    required this.file,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'file': file,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory Report.fromMap(Map<String, dynamic> map) {
    return Report(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      file: map['file'],
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }
}
