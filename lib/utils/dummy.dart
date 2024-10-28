import 'package:block_404/app/models/user.dart';
import 'package:block_404/utils/constants.dart';

final List<List<dynamic>> names = [
  [
    1,
    'Yared',
    'Fekade',
    '+251984872232',
    'yaredfekade@gmail.com',
    '',
    true,
    true
  ],
  [
    1,
    'Feven',
    'Yared',
    '+251984872232',
    'fevenyared@gmail.com',
    profileUrl,
    true,
    true
  ],
  [
    1,
    'Shalom',
    'Fekede',
    '+251984872232',
    'shalomfekede@gmail.com',
    profileUrl,
    true,
    true
  ],
  [
    1,
    'Girum',
    'Fikadu',
    '+251984872232',
    'girumfikadu@gmail.com',
    profileUrl,
    true,
    true
  ],
];

final List<User> dummyUsers = names
    .asMap()
    .entries
    .map((entry) => User(
        id: entry.value[0],
        firstName: entry.value[1],
        lastName: entry.value[2],
        phone: entry.value[3],
        email: entry.value[4],
        profilePicture: entry.value[5],
        isSuperuser: entry.value[6],
        isStaff: entry.value[7]))
    .toList();

final User dummyCurrentUser = dummyUsers[0];
