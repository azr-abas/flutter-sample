import 'dart:js';

import 'package:flutter/material.dart';
import 'package:my_first_app/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {'login': (context) => const myLogin()},
  ));
}
