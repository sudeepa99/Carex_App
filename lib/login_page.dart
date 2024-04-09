import 'dart:convert';

import 'package:carex/config.dart';
import 'package:carex/home_screen.dart';
import 'package:carex/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  // TextEditingController _emailController = TextEditingController();

  //late SharedPreferences prefs;
  @override
  // void initState() {
  //   super.initState();
  //   initSharedPref();
  // }

  // void initSharedPref() async {
  //   prefs = await SharedPreferences.getInstance();
  // }

  void registerUserLogin() async {
    var reqBody = {
      "email": _emailController.text,
      "password": _passwordController.text,
    };
    var response = await http.post(Uri.parse(login),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(reqBody));

    var jsonResponse = jsonDecode(response.body);

    print(jsonResponse['status']);

    // if (jsonResponse['status'] != null && jsonResponse['status'] == true) {
    //   var myToken = jsonResponse['token'];
    //   prefs.setString('token', myToken);
    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //           builder: (context) => HomeScreen(
    //               // token: myToken,
    //               )));
    // } else {
    //   print("Something went wrong");
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.fromLTRB(30, 100, 30, 0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage(
                  "assets/workman-wearing-hard-hat-working-with-metal-constructions-factory 1.png",
                ),
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.srcATop),
                fit: BoxFit.cover,
              ),
            ),
            child: Expanded(
              child: ListView(
                //mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Welcome to",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "CAREX",
                    style: TextStyle(
                      fontSize: 64.0,
                      color: Color.fromRGBO(255, 120, 23, 1),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 10.0,
                    ),
                  ),
                  const Text(
                    "Revolutionize your driving experience with CareX, your go-to app for seamless connections between drivers and mechanics. Whether you're on the road or in need of expert automotive assistance, CareX is here to bridge the gap.",
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 240.0),
                          child: Text(
                            "User Name*",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(255, 244, 247, 1)),
                          ),
                        ),
                        TextFormField(
                          cursorColor: Colors.white,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(10, 10, 0, 0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              borderSide: const BorderSide(
                                color: Color(0xFFFF7817),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              borderSide: const BorderSide(
                                color: Color(0xFFFF7817),
                              ),
                            ),
                          ),
                          controller: _emailController,
                          validator: (emailAdd) {
                            if (emailAdd == null || emailAdd.isEmpty) {
                              return 'Please enter your email address';
                            }
                            if (!RegExp(
                                    r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                                .hasMatch(emailAdd)) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 247.0),
                          child: Text(
                            "Password*",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(255, 244, 247, 1)),
                          ),
                        ),
                        TextFormField(
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(10, 10, 0, 0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              borderSide: const BorderSide(
                                color: Color(0xFFFF7817),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              borderSide: const BorderSide(
                                color: Color(0xFFFF7817),
                              ),
                            ),
                          ),
                          controller: _passwordController,
                          validator: (password) {
                            if (password == null || password.isEmpty) {
                              return 'Please enter a password';
                            } else if (password.length < 9) {
                              return 'Password shoulde be atleast 8 characters';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    ),
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: const Color.fromRGBO(255, 244, 247, 1)
                            .withOpacity(0.6),
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 250.0,
                      child: ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            //registerUserLogin();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF7817),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Login",
                              style: TextStyle(
                                color: Color.fromRGBO(255, 244, 247, 1),
                                fontSize: 18.0,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Color.fromRGBO(255, 244, 247, 1),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Image.asset("assets/Rectangle 36.png"),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: SizedBox(
                      width: 250.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        )),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset("assets/Google.png"),
                            const SizedBox(
                              width: 10.0,
                            ),
                            const Text(
                              "Sign in with Google",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFF22252B),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Center(
                    child: SizedBox(
                      width: 230.0,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                          ),
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Text(
                                "Login As Guest",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Color.fromRGBO(255, 244, 247, 1),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Color.fromRGBO(255, 244, 247, 1),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Don't Have an Account?",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color.fromRGBO(255, 244, 247, 1),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUp()));
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFFF7817),
                            ),
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.all(10)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          child: const Text(
                            "Register",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color.fromRGBO(255, 244, 247, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
