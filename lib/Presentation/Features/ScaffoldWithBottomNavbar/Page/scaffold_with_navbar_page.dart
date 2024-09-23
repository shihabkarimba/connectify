import 'package:connectify/Bloc/UserProfile/user_profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWIthBottomNavBar extends StatefulWidget {
  final StatefulNavigationShell shell;

  const ScaffoldWIthBottomNavBar({super.key, required this.shell});

  @override
  State<ScaffoldWIthBottomNavBar> createState() =>
      _ScaffoldWIthBottomNavBarState();
}

class _ScaffoldWIthBottomNavBarState extends State<ScaffoldWIthBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserProfileBloc>(
          create: (BuildContext context) => UserProfileBloc(),
        ),
      ],
      child: Scaffold(
        body: widget.shell,
        bottomNavigationBar: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          onDestinationSelected: widget.shell.goBranch,
          selectedIndex: widget.shell.currentIndex,
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(Icons.video_collection),
              icon: Icon(Icons.video_collection_outlined),
              label: 'Connect',
              tooltip: 'Connect',
            ),
            NavigationDestination(
              tooltip: 'Message',
              selectedIcon: Icon(Icons.message_rounded),
              icon: Icon(Icons.message_outlined),
              label: 'Message',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.notifications),
              icon: Icon(Icons.notifications_none_outlined),
              label: 'Notification',
              tooltip: 'Notification',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.person),
              icon: Icon(Icons.person_2_outlined),
              label: 'home',
              tooltip: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
