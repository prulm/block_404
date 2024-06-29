import 'package:block_404/app/models/user.dart';
import 'package:block_404/utils/constants.dart';

final List<List<dynamic>> names = [
  ['Yared', 'Fekade', '+251984872232', true, true],
  ['Fikremariyam', 'Fekade', '+251984872232', true, false],
  ['Bethel', 'Fekade', '+251984872232', false, true],
  ['Seferu', 'Fekade', '+251984872232', false, false],
];

final List<User> dummyUsers = names
    .asMap()
    .entries
    .map((entry) => User(
        id: entry.key,
        firstName: entry.value[0],
        lastName: entry.value[1],
        phone: entry.value[2],
        profilePicture: profileUrl,
        isOwner: entry.value[3],
        isResident: entry.value[4]))
    .toList();

final User dummyCurrentUser = dummyUsers[0];
