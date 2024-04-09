import 'dart:convert';

import 'package:carex/config.dart';
import 'package:carex/login_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> formKey1 = GlobalKey<FormState>();

  late String password_check;
  late String confirm_password;

  TextEditingController _firstnameController = TextEditingController();

  TextEditingController _lastnameController = TextEditingController();

  TextEditingController _nicNumberController = TextEditingController();

  TextEditingController _contactNumberController = TextEditingController();

  TextEditingController _emailController = TextEditingController();

  TextEditingController _streetController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _provinceController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  void registerUser() async {
    var regBody = {
      "firstname": _firstnameController.text,
      "lastname": _lastnameController.text,
      "nic": _nicNumberController.text,
      "contactNumber": _contactNumberController.text,
      "email": _emailController.text,
      "street": _streetController.text,
      "city": _cityController.text,
      "province": _provinceController.text,
      "password": _passwordController.text,
    };

    var response = await http.post(
      Uri.parse(registration),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(regBody),
    );

    var jsonResponse = jsonDecode(response.body);

    print(jsonResponse['status']);

    if (jsonResponse['status']) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    } else {
      print("Something went wrong");
    }

    // try {

    //   if (response.statusCode == 200) {
    //     // Registration successful
    //     print("Registration Successful");
    //     print(response.body);
    //     // Navigate to next screen or show success message
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) => const HomeScreen()),
    //     );
    //   } else {
    //     // Registration failed
    //     print("Registration Failed");
    //     print(response.body);
    //     // Handle error response, show error message to user, etc.
    //   }
    // } catch (error) {
    //   // Exception occurred during registration
    //   print("Error occurred during registration: $error");
    //   // Handle error, show error message to user, etc.
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
                  key: formKey1,
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "First Name*",
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
                          controller: _firstnameController,
                          validator: (first_name) {
                            if (first_name == null || first_name.isEmpty) {
                              return 'Please enter your name';
                            } else if (RegExp(r'\d').hasMatch(first_name)) {
                              return 'User name should not contain numerical values';
                            }
                            return null;
                          },
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Last Name*",
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
                          controller: _lastnameController,
                          validator: (last_name) {
                            if (last_name == null || last_name.isEmpty) {
                              return 'Please enter your name';
                            }
                            if (RegExp(r'\d').hasMatch(last_name)) {
                              return 'User name should not contain numerical values';
                            }
                            return null;
                          },
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "NIC Number*",
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
                            controller: _nicNumberController,
                            validator: (nic_Num) {
                              if (nic_Num == null || nic_Num.isEmpty) {
                                return 'Please enter your NIC number';
                              }
                              return null;
                            }),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Contact Number*",
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
                          controller: _contactNumberController,
                          validator: (contactNo) {
                            if (contactNo == null || contactNo.isEmpty) {
                              return 'Please enter your contact number';
                            }
                            if (RegExp(r'[^\d]').hasMatch(contactNo)) {
                              return 'Contact number should not contain texts';
                            }
                            if (contactNo.length != 10) {
                              return 'Contact number must be 10 digits';
                            }
                            return null;
                          },
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Email Address*",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 244, 247, 1)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: TextFormField(
                            //keyboardType: TextInputType.emailAddress,
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
                            }),
                      ),
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
                              return "Please enter your province";
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
                        if (formKey1.currentState!.validate()) {
                          registerUser();

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFFF7817),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.all(10)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
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
