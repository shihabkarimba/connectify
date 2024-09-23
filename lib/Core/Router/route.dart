import 'package:connectify/Presentation/Features/Connect/Page/connect_page.dart';
import 'package:connectify/Presentation/Features/Message/Page/message_page.dart';
import 'package:connectify/Presentation/Features/Notification/Page/notification_page.dart';
import 'package:connectify/Presentation/Features/Profile/Page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../Presentation/Features/Login/Page/login_page.dart';
import '../../Presentation/Features/ScaffoldWithBottomNavbar/Page/scaffold_with_navbar_page.dart';
import '../../Presentation/Features/Signup/Page/signup_page.dart';
import '../../Presentation/Features/Splash/Page/splash_page.dart';

part 'route_data.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: Routes.splash.path,
  navigatorKey: _navigatorKey,
  redirect: (ctx, state) {
    ///TODO(SHIHAB) ADD REDIRECT WHEN IT IS NEEDED (eg: deep linking)
    return null;
  },
  routes: [
    GoRoute(
      name: Routes.splash.name,
      path: Routes.splash.path,
      pageBuilder: Routes.splash.pageBuilder,
    ),
    GoRoute(
      name: Routes.login.name,
      path: Routes.login.path,
      pageBuilder: Routes.login.pageBuilder,
      routes: [
        GoRoute(
          name: Routes.signup.name,
          path: Routes.signup.path,
          pageBuilder: Routes.signup.pageBuilder,
        ),
      ],
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, shell) =>
          ScaffoldWIthBottomNavBar(shell: shell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: Routes.connect.name,
              path: Routes.connect.path,
              pageBuilder: Routes.connect.pageBuilder,
              routes: const [
                ///
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: Routes.message.name,
              path: Routes.message.path,
              pageBuilder: Routes.message.pageBuilder,
              routes: const [
                ///
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: Routes.notification.name,
              path: Routes.notification.path,
              pageBuilder: Routes.notification.pageBuilder,
              routes: const [
                ///
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: Routes.profile.name,
              path: Routes.profile.path,
              pageBuilder: Routes.profile.pageBuilder,
              routes: const [
                ///
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);
