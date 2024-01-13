import 'package:carex/login_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 10)).then((value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 300.0),
                child: Image.asset("assets/Carex Logo 1.png", width: 300.0),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 330.0),
                  child: Lottie.asset(
                    "assets/animations/Animation - 1704549915037.json",
                    animate: true,
                    repeat: true,
                    width: 180.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
