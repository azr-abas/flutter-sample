import 'package:flutter/material.dart';

class Mydashboard extends StatefulWidget {
  const Mydashboard({
    super.key,
    required this.email,
  });
  final String email;
  @override
  State<Mydashboard> createState() => _MydashboardState();
}

class _MydashboardState extends State<Mydashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Text(widget.email),
      )),
    );
  }
}
