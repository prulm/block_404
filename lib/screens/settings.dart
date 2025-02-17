import 'package:block_404/app/providers/theme_provider.dart';
import 'package:block_404/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class Settings extends ConsumerStatefulWidget {
  const Settings({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingsState();
}

class _SettingsState extends ConsumerState<Settings> {
  late bool darkMode;
  bool pushNotf = false;
  List<Map> tiles = [
    {
      "title": const Text(
        "Profile",
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      "leading": const Icon(
        Icons.person_outline_rounded,
      ),
      "subtitle": const Text("Update your profile"),
      "ontap": PathConst.profileSettingsPath,
      "trailing": false,
    },
    {
      "title": const Text(
        "Dark Mode",
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      "leading": const Icon(
        Icons.dark_mode_outlined,
      ),
      "subtitle": const Text("Turn dark mode on or off"),
      "ontap": null,
      "trailing": true,
      "darkMode": true,
    },
    {
      "title": const Text(
        "Push Notifications",
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      "leading": const Icon(
        Icons.notifications_none_rounded,
      ),
      "subtitle": const Text("Enable to receive notifications"),
      "ontap": null,
      "trailing": true,
      "darkMode": false,
    },
    {
      "title": const Text(
        "Check for Updates",
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      "leading": const Icon(
        Icons.system_update_outlined,
      ),
      "subtitle": const Text("Get the latest version"),
      "ontap": PathConst.settingsPath,
      "trailing": false,
    },
    {
      "title": const Text(
        "About Us",
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      "leading": const Icon(
        Icons.info_outline,
      ),
      "subtitle": const Text("Find out more about our services"),
      "ontap": PathConst.settingsPath,
      "trailing": false,
    },
    {
      "title": const Text(
        "Terms and Conditions",
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      "leading": const Icon(
        Icons.document_scanner_outlined,
      ),
      "subtitle": const Text("Review our terms and conditions"),
      "ontap": PathConst.settingsPath,
      "trailing": false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    final newThemeProvider = ref.watch(themeProvider);
    darkMode = newThemeProvider.isDarkMode;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: ListView.builder(
        itemCount: tiles.length,
        itemBuilder: (context, index) {
          final currentTile = tiles[index];
          return ListTile(
            title: currentTile["title"],
            leading: currentTile["leading"],
            subtitle: currentTile["subtitle"],
            onTap: () {
              if (currentTile["ontap"] != null) {
                GoRouter.of(context).push(currentTile["ontap"]);
              } else {
                setState(() {
                  if (currentTile["darkMode"]) {
                    darkMode = !darkMode;
                    newThemeProvider.toggleTheme();
                  } else {
                    pushNotf = !pushNotf;
                  }
                });
              }
            },
            trailing: currentTile["trailing"]
                ? Theme(
                    data: ThemeData(useMaterial3: false),
                    child: Switch(
                        value: currentTile["darkMode"] ? darkMode : pushNotf,
                        onChanged: (value) {
                          setState(() {
                            if (currentTile["darkMode"]) {
                              darkMode = value;
                              newThemeProvider.toggleTheme();
                            } else {
                              pushNotf = value;
                            }
                          });
                        }),
                  )
                : null,
          );
        },
      ),
    );
  }
}
