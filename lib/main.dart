import 'package:carex/first_page.dart';
import 'package:carex/home_screen.dart';
import 'package:carex/mechanic.dart';
import 'package:carex/mechanic_profile.dart';
import 'package:carex/signup_page.dart';
import 'package:carex/center.dart';
import 'package:carex/tyre_center.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MechanicProfile(),
    );
  }
}
