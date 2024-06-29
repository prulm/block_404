class User {
  final int id;
  final String firstName;
  final String lastName;
  final String phone;
  final String profilePicture;
  final bool isOwner;
  final bool isResident;
  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.profilePicture,
    required this.isOwner,
    required this.isResident,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'phone': phone,
      'profilePicture': profilePicture,
      'isOwner': isOwner,
      'isResident': isResident,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
        id: map['id'],
        firstName: map['firstName'],
        lastName: map['lastName'],
        phone: map['phone'],
        profilePicture: map['profilePicture'],
        isOwner: map['isOwner'],
        isResident: map['isResident']);
  }
}
