import 'package:flutter/material.dart';

class Chatscreen extends StatefulWidget {
  Chatscreen({Key? key}) : super(key: key);

  @override
  State<Chatscreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Chatscreen> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0XFF22252B),
            leading: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Image.asset("assets/arrow-left.png"),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(1.0),
              child: Container(
                height: 1.0,
                color: Color(0xFFFF7817),
              ),
            ),
            title: Text(
              'Chat',
              style: TextStyle(
                color: Color(0XFFFFFFFF),
                fontSize: 20,
              ),
            ),
          ),
          body: Container(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
            color: const Color(0XFF22252B),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: [
                SizedBox(height: 20), // Add space before the first profile widget
                ProfileWidget(
                  name: "Alan Tyre Mart",
                  location: "From: Kegalle",
                  imagePath: "assets/tyre_photo.png",
                ),
                SizedBox(height: 20), // Add space between profile widgets
                ProfileWidget(
                  name: "Alan Tyre Mart",
                  location: "From: Kegalle",
                  imagePath: "assets/tyre_photo.png",
                ),
              ],
            ),
          ),
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
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  final String name;
  final String location;
  final String imagePath;

  ProfileWidget({
    required this.name,
    required this.location,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFFF7817),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Image.asset(imagePath),
          Padding(
            padding: EdgeInsets.only(left: 22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0XFFFFFFFF),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0XFFFFFFFF),
                  ),
                ),
              ],
            ),
          ),
          Spacer(), // Spacer to push the notification icon to the right
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(8),
              color: const Color(0xFFFF7817),
              child: Image.asset("assets/bell.png"),
            ),
          ),
        ],
      ),
    );
  }
}