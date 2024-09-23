import 'package:flutter/material.dart';

import '../View/connect_view.dart';

class ConnectPage extends StatefulWidget {
  const ConnectPage({super.key});

  @override
  State<ConnectPage> createState() => _ConnectPageState();
}

class _ConnectPageState extends State<ConnectPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ConnectView(),
    );
  }
}
