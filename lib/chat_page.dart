import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0XFF22252B), // Background color added here
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
              'Chat Entity Name',
              style: TextStyle(
                color: Color(0XFFFFFFFF),
                fontSize: 20,
              ),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  children: [
                    MessageBubble(
                      message: 'Hi!',
                      isMe: true,
                      time: '10:00 AM, 9 Feb',
                    ),
                    MessageBubble(
                      message: 'Hi!',
                      isMe: false,
                      time: '10:05 AM, 9 Feb',
                    ),
                  ],
                ),
              ),
              _buildMessageComposer(),
            ],
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

  Widget _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 50,
      color: Color(0XFF22252B),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.orange),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            IconButton(
              icon: Image.asset("assets/paperclip.png"),
              onPressed: () {
                // Add functionality to pick and send images
              },
            ),
            Expanded(
              child: TextField(
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  hintText: 'Type Your Text Here...',
                  hintStyle: TextStyle(color:  Colors.grey),
                  contentPadding: EdgeInsets.all(10),
                  border: InputBorder.none,
                ),
              ),
            ),
            IconButton(
              icon: Image.asset("assets/send_Light.png"),
              onPressed: () {
                // Add functionality to send messages
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String message;
  final bool isMe;
  final String? time; // Time and date for the message

  MessageBubble({required this.message, required this.isMe, this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        if (time != null) // Display time for every message
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Text(
              time!,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 12,
              ),
            ),
          ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Container(
            decoration: BoxDecoration(
              color: isMe ? Colors.grey[800] : Colors.grey[700],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: isMe ? Radius.circular(12) : Radius.circular(0),
                bottomRight: isMe ? Radius.circular(0) : Radius.circular(12),
              ),
            ),
            constraints: BoxConstraints(maxWidth: 200),
            padding: EdgeInsets.all(10),
            child: Text(
              message,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}