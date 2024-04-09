//import 'package:carex/user_details.dart';

import 'package:carex/body_wash_profile.dart';
import 'package:carex/centres.dart';
import 'package:carex/home_screen.dart';
import 'package:carex/mechanic.dart';
import 'package:carex/profile_screen.dart';
import 'package:flutter/material.dart';

class BodywashPage extends StatefulWidget {
  const BodywashPage({Key? key}) : super(key: key);

  @override
  State<BodywashPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BodywashPage> {
  int myIndex = 0;
  String _dropdownvalue = 'Prius';
  bool _isDropdownOpen = true;

  List<String> listItem = [
    'Prius',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
    'Option 6'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => ChatScreen()));
                },
                icon: Image.asset(
                  "assets/chat.png",
                  color: myIndex == 0
                      ? const Color(0XFFFFFFFF)
                      : const Color(0xFFFF7817),
                ),
              ),
              label: 'CHAT',
              backgroundColor: const Color(0XFF22252B),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MechanicPage()));
                  },
                  icon: Image.asset(
                    "assets/mechanic.png",
                    color: myIndex == 1
                        ? const Color(0XFFFFFFFF)
                        : const Color(0xFFFF7817),
                  )),
              label: 'MECHANIC',
              backgroundColor: const Color(0XFF22252B),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  icon: Image.asset(
                    "assets/home.png",
                    color: myIndex == 2
                        ? const Color(0XFFFFFFFF)
                        : const Color(0xFFFF7817),
                  )),
              label: 'HOME',
              backgroundColor: const Color(0XFF22252B),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CenterPage()));
                  },
                  icon: Image.asset(
                    "assets/centers.png",
                    color: myIndex == 3
                        ? const Color(0XFFFFFFFF)
                        : const Color(0xFFFF7817),
                  )),
              label: 'CENTERS',
              backgroundColor: const Color(0XFF22252B),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
                icon: Image.asset(
                  "assets/profile.png",
                  color: myIndex == 4
                      ? const Color(0XFFFFFFFF)
                      : const Color(0xFFFF7817),
                ),
              ),
              label: 'PROFILE',
              backgroundColor: const Color(0XFF22252B),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
            color: const Color(0XFF22252B),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 340, bottom: 20),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      icon: const Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.white,
                        size: 35,
                        weight: 10,
                      )),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFFF7817),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(40.5),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/user.png"),
                      const Padding(
                        padding: EdgeInsets.only(left: 22.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "USER NAME",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Color(0XFFFFFFFF),
                              ),
                            ),
                            Text(
                              "Current Location",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color(0XFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Image.asset("assets/vertical-line.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "TOYOTA",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Color(0XFFFFFFFF),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isDropdownOpen = !_isDropdownOpen;
                                });
                              },

                              // Adjust the spacing between label and dropdown icon
                              child: DropdownButton(
                                dropdownColor: const Color(0XFF22252B),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 16),

                                underline: Container(),
                                icon: const Icon(Icons.keyboard_arrow_up,
                                    color: Colors.white),
                                iconSize: 25,
                                iconEnabledColor: Colors.white,
                                // Hide the hint text since we have a label
                                value: _dropdownvalue,
                                items: listItem.map((value1) {
                                  return DropdownMenuItem(
                                    value: value1,
                                    child: Text(value1),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _dropdownvalue = newValue!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                //search box
                TextField(
                  cursorColor: Colors.white,
                  style: const TextStyle(
                    color: Color(0XFFFFFFFF),
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFFF7817),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFFF7817),
                        ),
                        borderRadius: BorderRadius.circular(15)),
                    hintText: "Search by Name or Location",
                    hintStyle: TextStyle(
                      fontSize: 16.0,
                      color: const Color(0XFFFFFFFF).withOpacity(0.5),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFFFF7817),
                            borderRadius: BorderRadius.circular(8)),
                        width: 10,
                        height: 10,
                        child: const Icon(
                          Icons.search,
                          color: Color(0XFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(35, 32)),
                        side: MaterialStateProperty.all<BorderSide>(
                          const BorderSide(
                            color: Color(0xFFFF7817),
                          ),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.fromLTRB(14.5, 5, 14.5, 5)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0XFF22252B),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Online Mechanics",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(30, 32)),
                        side: MaterialStateProperty.all<BorderSide>(
                          const BorderSide(
                            color: Color(0xFFFF7817),
                          ),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.fromLTRB(15, 5, 15, 5)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0XFF22252B),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "From My Area",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(30, 32)),
                        side: MaterialStateProperty.all<BorderSide>(
                          const BorderSide(
                            color: Color(0xFFFF7817),
                          ),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.fromLTRB(15, 5, 15, 5)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0XFF22252B),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Nearest",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BodyWashProfile()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFFF7817),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/bodywash_photo.png"),
                          const Padding(
                            padding: EdgeInsets.only(left: 22.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "AMW Body Wash",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Color(0XFFFFFFFF),
                                  ),
                                ),
                                Text(
                                  "From : Kegalle",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0XFFFFFFFF),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 55,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                                padding: const EdgeInsets.all(9),
                                color: const Color(0xFFFF7817),
                                child:
                                    Image.asset("assets/file-Regular (1).png")),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                                padding: const EdgeInsets.all(8),
                                color: const Color(0xFFFF7817),
                                child: Image.asset("assets/phone-Regular.png")),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BodyWashProfile()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFFF7817),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/bodywash_photo.png"),
                        const Padding(
                          padding: EdgeInsets.only(left: 22.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "AMW Body Wash",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Color(0XFFFFFFFF),
                                ),
                              ),
                              Text(
                                "From : Kegalle",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color(0XFFFFFFFF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 55,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              padding: const EdgeInsets.all(9),
                              color: const Color(0xFFFF7817),
                              child:
                                  Image.asset("assets/file-Regular (1).png")),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              padding: const EdgeInsets.all(8),
                              color: const Color(0xFFFF7817),
                              child: Image.asset("assets/phone-Regular.png")),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
