import 'package:block_404/app/models/user.dart';
import 'package:block_404/utils/constants.dart';

final List<List<dynamic>> names = [
  ['Yared', 'Fekade', '+251984872232', '', true, true],
  ['Shalom', 'Fekade', '+251943032826', profileUrl, true, false],
  ['Girum', 'Fekade', '+251984872232', profileUrl, false, true],
  ['Feven', 'Yared', '+251984872232', profileUrl, false, false],
];

final List<User> dummyUsers =
    names.asMap().entries.map((entry) => User(
      
    )).toList();

final User dummyCurrentUser = dummyUsers[0];
