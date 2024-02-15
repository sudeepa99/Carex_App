import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int myIndex = 0;
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
                icon: Image.asset("assets/chat.png"),
                label: 'CHAT',
                backgroundColor: const Color(0XFF22252B),
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/mechanic.png"),
                label: 'MECHANIC',
                backgroundColor: const Color(0XFF22252B),
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/home.png"),
                label: 'HOME',
                backgroundColor: const Color(0XFF22252B),
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/centers.png"),
                label: 'CENTERS',
                backgroundColor: const Color(0XFF22252B),
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/profile.png"),
                label: 'PROFILE',
                backgroundColor: const Color(0XFF22252B),
              ),
            ]),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
            color: const Color(0XFF22252B),
            child: ListView(
              children: [
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
                      const SizedBox(
                        width: 65,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Edit",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "My Vehicles",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 170,
                        height: 160,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: const Color(0XFF302E41),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color(0xFFFF7817),
                            )),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    "TOYOTA",
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.white),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    hoverColor: const Color(0xFFFF7817),
                                    icon: const Icon(Icons.delete),
                                    color: Colors.white,
                                  )
                                ],
                              ),
                              Text(
                                "Prius",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white.withOpacity(0.6),
                                ),
                                //textAlign: TextAlign.left,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "CAR 8627",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white.withOpacity(0.7),
                                ),
                              )
                            ]),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Container(
                        width: 170,
                        height: 160,
                        padding: const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            color: const Color(0XFF302E41),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color(0xFFFF7817),
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon:
                                  const Icon(Icons.add_circle_outline_rounded),
                              color: Colors.white,
                              iconSize: 30,
                            ),
                            const Text(
                              "Add new",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "My Appointments - Active",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                Container(
                  padding: const EdgeInsets.all(14),
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      color: const Color(0XFF302E41),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xFFFF7817),
                      )),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Appointed Center Name 24/02/2024 08:30",
                        style: TextStyle(
                            color: Colors.white, height: 2, fontSize: 16),
                      ),
                      Text(
                        "Appointed Center Name 24/02/2024 08:30",
                        style: TextStyle(
                            color: Colors.white, height: 2, fontSize: 16),
                      ),
                      Text(
                        "Appointed Center Name 24/02/2024 08:30",
                        style: TextStyle(
                            color: Colors.white, height: 2, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "My Appointments - Request",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                Container(
                  padding: const EdgeInsets.all(14),
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      color: const Color(0XFF302E41),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xFFFF7817),
                      )),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Appointed Center Name 24/02/2024 08:30",
                        style: TextStyle(
                            color: Colors.white, height: 2, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "My Appointments - Done",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                Container(
                  padding: const EdgeInsets.all(14),
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      color: const Color(0XFF302E41),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xFFFF7817),
                      )),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Appointed Center Name 24/02/2024 08:30",
                        style: TextStyle(
                            color: Colors.white, height: 2, fontSize: 16),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
