import 'package:flutter/material.dart';

class PathConst {
  static String homePath = '/home';
  static String profilePath = '/profile';
  static String loginPath = '/login';
  static String signupPath = '/signup';
  static String resetPassPath = '/resetPass';
  static const String settingsPath = '/settings';
  static const String profileSettingsPath = '/profileSettings';
  static const String notificationsPath = '/notifications';
}

const String apiUrl = "https://localhost:8000";

const String aptPic =
    "https://images.unsplash.com/photo-1460317442991-0ec209397118?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";

const String profileUrl =
    "https://cdn3.iconfinder.com/data/icons/font-awesome-solid/512/circle-user-256.png";

final Image backdropImage = Image.network(
  aptPic,
  fit: BoxFit.cover,
);
