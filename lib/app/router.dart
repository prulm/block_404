
import 'package:block_404/app/auth_check.dart';
import 'package:block_404/screens/forgot_password.dart';
import 'package:block_404/screens/home.dart';
import 'package:block_404/screens/login.dart';
import 'package:block_404/screens/notifications.dart';
import 'package:block_404/screens/profile.dart';
import 'package:block_404/screens/profile_settings.dart';
import 'package:block_404/screens/settings.dart';
import 'package:block_404/screens/signup.dart';
import 'package:block_404/utils/constants.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'AuthCheck',
      builder: (context, state) => const AuthCheck(),
    ),
    GoRoute(
      path: PathConst.loginPath,
      name: 'login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: PathConst.signupPath,
      name: 'register',
      builder: (context, state) => const SignupScreen(),
    ),
    GoRoute(
      path: PathConst.homePath,
      name: 'home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: PathConst.profilePath,
      name: 'profile',
      builder: (context, state) => const Profile(),
    ),
    GoRoute(
      path: PathConst.resetPassPath,
      name: 'resetPass',
      builder: (context, state) => const ForgotPassword(),
    ),
    GoRoute(
      path: PathConst.settingsPath,
      name: 'settings',
      builder: (context, state) => const Settings(),
    ),
    GoRoute(
      path: PathConst.profileSettingsPath,
      name: 'profileSettings',
      builder: (context, state) => const ProfileSettings(),
    ),
    GoRoute(
      path: PathConst.notificationsPath,
      name: 'notifications',
      builder: (context, state) => const Notifications(),
    ),
  ],
);