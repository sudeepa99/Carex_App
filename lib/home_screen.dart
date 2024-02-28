import 'package:carex/body_wash.dart';
import 'package:carex/center.dart';
import 'package:carex/mechanic.dart';
import 'package:carex/profile_screen.dart';
import 'package:carex/tyre_center.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            padding: const EdgeInsets.fromLTRB(20.0, 80.0, 20.0, 0.0),
            color: const Color(0XFF22252B),
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                //User Details Component
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
                      const Padding(
                        padding: EdgeInsets.only(left: 25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "TOYOTA",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Color(0XFFFFFFFF),
                              ),
                            ),
                            Text(
                              "Prius",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color(0XFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 80.0,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFF7817),
                      borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFFF7817)),
                      side: MaterialStateProperty.all<BorderSide>(
                          BorderSide.none),
                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/emergency.png"),
                        const SizedBox(
                          width: 20.0,
                        ),
                        const Text(
                          "EMERGENCY SUPPORT",
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Color(0XFFFFFFFF),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      //mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          height: 50.0,
                          width: 180.0,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MechanicPage()));
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0XFF22252B)),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              side: MaterialStateProperty.all<BorderSide>(
                                const BorderSide(
                                  color: Color(0xFFFF7817),
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/mechanic.png",
                                ),
                                const SizedBox(
                                  width: 3.0,
                                ),
                                const Text(
                                  "MECHANIC",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0XFFFFFFFF),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        SizedBox(
                          height: 50.0,
                          width: 180.0,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CenterPage()));
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0XFF22252B)),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              side: MaterialStateProperty.all<BorderSide>(
                                const BorderSide(
                                  color: Color(0xFFFF7817),
                                ),
                              ),
                            ),
                            child: Row(
                              //crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image.asset("assets/centers.png"),
                                const SizedBox(
                                  width: 3.0,
                                ),
                                const Text(
                                  "CENTERS",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0XFFFFFFFF),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 50.0,
                          width: 180.0,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const BodywashPage()));
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0XFF22252B)),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              side: MaterialStateProperty.all<BorderSide>(
                                const BorderSide(
                                  color: Color(0xFFFF7817),
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Image.asset("assets/body_wash.png"),
                                const SizedBox(
                                  width: 3.0,
                                ),
                                const Text(
                                  "BODY WASH",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0XFFFFFFFF),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        SizedBox(
                          height: 50.0,
                          width: 180.0,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Tyre_centerPage()));
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0XFF22252B)),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              side: MaterialStateProperty.all<BorderSide>(
                                const BorderSide(
                                  color: Color(0xFFFF7817),
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Image.asset("assets/tyre_mart.png"),
                                const SizedBox(
                                  width: 3.0,
                                ),
                                const Text(
                                  "TYRE MART",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0XFFFFFFFF),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 7, 20, 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFFF7817),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Column(
                    children: [
                      Text(
                        "SAFETY TIP 01",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0XFFFFFFFF),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Regular Hybrid System Check-Ups",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFFFF7817),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text(
                        "The heart of your Prius lies in its advanced hybrid system, which blends electric and gasoline power seamlessly. Regular check-ups and maintenance of this intricate system are essential to ensure optimal performance.,",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0XFFFFFFFF),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(80, 20, 80, 20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFFF7817),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Column(
                    children: [
                      Text(
                        "MY APPOINTMENTS",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0XFFFFFFFF),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        "Western Srvice Center PVT",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFFFF7817),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text(
                        "12 Main Street Colombo 10",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0XFFFFFFFF),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "25 December 2023",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0XFFFFFFFF),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "10 AM - 01 PM",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0XFFFFFFFF),
                          fontWeight: FontWeight.w500,
                        ),
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
