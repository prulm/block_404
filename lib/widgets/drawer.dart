import 'dart:ui';

import 'package:block_404/app/models/user.dart';
import 'package:unicons/unicons.dart';
import 'package:block_404/app/providers/theme_provider.dart';
import 'package:block_404/utils/constants.dart';
import 'package:block_404/utils/dummy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DrawerMenu extends ConsumerStatefulWidget {
  const DrawerMenu({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends ConsumerState<DrawerMenu> {
  final User user = dummyCurrentUser;

  @override
  Widget build(BuildContext context) {
    final newThemeProvider = ref.watch(themeProvider);
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const NetworkImage(aptPic),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5), BlendMode.darken),
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.zero,
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      radius: 30.0,
                      child: FadeInImage.assetNetwork(
                        placeholder: profileUrl,
                        image: user.profilePicture,
                        fit: BoxFit.cover,
                        imageErrorBuilder: (context, error, stackTrace) {
                          return CircleAvatar(
                            radius: 30.0,
                            child: Text(
                              user.firstName[0],
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          );
                        },
                      ),
                    ),
                    title: Text(
                      "${user.firstName} ${user.lastName}",
                      maxLines: 2,
                      style: TextStyle(
                        color: Theme.of(context).indicatorColor,
                      ),
                    ),
                    subtitle: Text(
                      user.phone,
                      maxLines: 1,
                      style: TextStyle(
                        color: Theme.of(context).highlightColor,
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(UniconsLine.estate),
                title: const Text('Home'),
                onTap: () {
                  context.pop();
                },
              ),
              ListTile(
                leading: const Icon(UniconsLine.user),
                title: const Text('Profile'),
                onTap: () {
                  context.pop();
                  context.push(PathConst.profilePath);
                },
              ),
              ListTile(
                leading: const Icon(UniconsLine.setting),
                title: const Text('Settings'),
                onTap: () {
                  context.pop();
                  GoRouter.of(context).push(PathConst.settingsPath);
                },
              ),
              ListTile(
                leading: const Icon(UniconsLine.moon),
                title: const Text('Dark Mode'),
                onTap: () {
                  newThemeProvider.toggleTheme();
                },
              ),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10.0),
            child: ElevatedButton.icon(
              onPressed: () async {
                //clear the shared pref
                SharedPreferences pref = await SharedPreferences.getInstance();
                await pref.clear();
                context.go(PathConst.loginPath);
              },
              icon: Icon(UniconsLine.sign_out_alt, color: Colors.red[400]),
              label: Text(
                "Logout",
                style: TextStyle(
                  color: Colors.red[400],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
