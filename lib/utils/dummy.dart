import 'package:block_404/app/models/user.dart';

const String profileUrl =
    "https://cdn3.iconfinder.com/data/icons/font-awesome-solid/512/circle-user-256.png";

final List<List<dynamic>> names = [
  ['Yared', 'Fekade', true, true],
  ['Fikremariyam', 'Fekade', true, false],
  ['Bethel', 'Fekade', false, true],
  ['Seferu', 'Fekade', false, false],
];

final List<User> users = names.asMap().entries.map((entry) => User(
    id: entry.key,
    firstName: entry.value[0],
    lastName: entry.value[1],
    profilePicture: profileUrl,
    isOwner: entry.value[2],
    isResident: entry.value[3])).toList();

final User currentUser = users[0];
