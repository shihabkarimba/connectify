import 'package:connectify/Bloc/UserProfile/user_profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConnectView extends StatefulWidget {
  const ConnectView({super.key});

  @override
  State<ConnectView> createState() => _ConnectViewState();
}

class _ConnectViewState extends State<ConnectView> {
  @override
  void initState() {
    super.initState();
    context.read<UserProfileBloc>().add(const OnGetUserProfileEvent());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: BlocBuilder<UserProfileBloc, UserProfileState>(
              builder: (context, state) {
                return switch (state) {
                  UserProfileLoadedState(userModel: final userModel) => Row(
                      children: [
                        Text(
                          'Hello ${userModel.name}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  UserProfileInitialState() ||
                  UserProfileLoadingState() ||
                  UserProfileErrorState() =>
                    const SizedBox.shrink(),
                };
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const TextField(
                    decoration: InputDecoration(label: Text('Enter room Id')),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Join'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
