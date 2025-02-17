import 'package:block_404/app/providers/theme_provider.dart';
import 'package:block_404/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:unicons/unicons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    getToken();
    getTheme();
    super.initState();
  }

  String token = '';
  late bool darkMode;

  void getToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      token = pref.getString('accessToken')!;
    });
  }

  void getTheme() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      darkMode = pref.getBool('isDarkMode') ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final newThemeProvider = ref.watch(themeProvider);
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
          ),
          actions: [
            darkMode!
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        darkMode = !darkMode;
                        newThemeProvider.toggleTheme();
                      });
                    },
                    icon: const Icon(UniconsLine.brightness_low))
                : IconButton(
                    onPressed: () {
                      setState(() {
                        darkMode = !darkMode;
                        newThemeProvider.toggleTheme();
                      });
                    },
                    icon: const Icon(UniconsLine.moon)),
          ],
        ),
        drawer: const DrawerMenu(),
        body: Center(
            child: Column(children: [
          Text(token),
        ])),
      );
    });
  }
}
