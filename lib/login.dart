import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_first_app/dashboard.dart';

class myLogin extends StatefulWidget {
  const myLogin({super.key});

  @override
  State<myLogin> createState() => _myLoginState();
}

class _myLoginState extends State<myLogin> {
  @override
  String email = '';
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 35, top: 130),
          child: const Text(
            'Welcome\nBack',
            style: TextStyle(fontSize: 33),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.5,
              right: 35,
              left: 35),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  print('onchanged($value)');
                  email = value;
                },
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Mydashboard(email: email),
                            ));
                      },
                      icon: const Icon(Icons.arrow_forward),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
