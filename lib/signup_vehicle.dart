import 'package:carex/home_screen.dart';
import 'package:carex/signup_vehicle.dart';
import 'package:flutter/material.dart';

class SignUpVehicle extends StatefulWidget {
  SignUpVehicle({super.key});

  @override
  State<SignUpVehicle> createState() => _SignUpVehicleState();
}

class _SignUpVehicleState extends State<SignUpVehicle> {
  final GlobalKey<FormState> formKey2 = GlobalKey<FormState>();
  late String password_check;
  late String confirm_password;

  TextEditingController _streetController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _provinceController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

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
                alignment: Alignment.topLeft,
              ),
            ),
            child: ListView(
              //mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Sign Up With",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Carex",
                  style: TextStyle(
                    fontSize: 32.0,
                    color: Color(0xFFFF7817),
                    letterSpacing: 10.0,
                  ),
                ),
                const Text(
                    'Revolutionise your driving experience with CareX! Sign up for seamless connections with drivers and mechanics. Your journey begins here! ',
                    style: TextStyle(fontSize: 18.0, color: Colors.white)),
                const SizedBox(
                  height: 30.0,
                ),
                Form(
                  key: formKey2,
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Street/Lane*",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 244, 247, 1)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: TextFormField(
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
                          controller: _streetController,
                          validator: (street) {
                            if (street == null || street.isEmpty) {
                              return "Please enter your street";
                            }
                            return null;
                          },
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "City*",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 244, 247, 1)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: TextFormField(
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
                          controller: _cityController,
                          validator: (city) {
                            if (city == null || city.isEmpty) {
                              return "Please enter your city";
                            } else if (RegExp(r'\d').hasMatch(city)) {
                              return 'City should not contain numerical values';
                            }
                            return null;
                          },
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Province*",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 244, 247, 1)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: TextFormField(
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
                          controller: _provinceController,
                          validator: (province) {
                            if (province == null || province.isEmpty) {
                              return "Please enter your city";
                            } else if (RegExp(r'\d').hasMatch(province)) {
                              return 'Province should not contain numerical values';
                            }
                            return null;
                          },
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Password*",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 244, 247, 1)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: TextFormField(
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
                          onChanged: (password) {
                            password_check = password;
                          },
                          controller: _passwordController,
                          validator: (password) {
                            if (password == null || password.isEmpty) {
                              return "Please enter your password";
                            } else if (password.length < 9) {
                              return 'Password shoulde be atleast 8 characters';
                            }
                            return null;
                          },
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Confirmation Password*",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 244, 247, 1)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: TextFormField(
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
                          onChanged: (confirmPassword) {
                            confirm_password = confirmPassword;
                          },
                          controller: _confirmPasswordController,
                          validator: (confirmPassword) {
                            if (confirmPassword == null ||
                                confirmPassword.isEmpty) {
                              return "Please enter your password";
                            } else if (confirmPassword != password_check) {
                              return "Passwords do not match";
                            }

                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Center(
                  child: SizedBox(
                    width: 250.0,
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey2.currentState!.validate()) {
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
                            "Sign Up",
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
                  height: 20.0,
                ),
                Image.asset("assets/Rectangle 36.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
