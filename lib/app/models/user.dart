class User {
  final int id;
  final String firstName;
  final String lastName;
  final String phone;
  final String email;
  final String profilePicture;
  final bool isSuperuser;
  final bool isStaff;
  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.email,
    required this.profilePicture,
    required this.isSuperuser,
    required this.isStaff,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'phone': phone,
      'email': email,
      'profilePicture': profilePicture,
      'is_superuser': isSuperuser,
      'is_staff': isStaff,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      phone: map['phone'],
      email: map['email'],
      profilePicture: map['profilePicture'],
      isSuperuser: map['is_superuser'],
      isStaff: map['is_staff'],
    );
  }
}
