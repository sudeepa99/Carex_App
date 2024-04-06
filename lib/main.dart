import 'package:carex/appointment_screen.dart';
import 'package:carex/appointment_screen_confirmation.dart';
import 'package:carex/body_wash_profile.dart';
import 'package:carex/first_page.dart';
import 'package:carex/home_screen.dart';
import 'package:carex/login_page.dart';
import 'package:carex/mechanic.dart';
import 'package:carex/mechanic_profile.dart';
import 'package:carex/profile_screen.dart';
import 'package:carex/service_centre_profile.dart';
import 'package:carex/signup_page.dart';
import 'package:carex/center.dart';
import 'package:carex/tyre_center.dart';
import 'package:carex/tyre_centre_profile.dart';
import 'package:carex/user_profile.dart';
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
      home: UserProfile(),
    );
  }
}
