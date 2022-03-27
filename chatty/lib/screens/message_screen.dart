// ignore_for_file: deprecated_member_use

import 'package:chatty/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMessageBar(),
      body: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_chat_page.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding/3,
                  vertical: kDefaultPadding / 3,
                ),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                ),
                child: SafeArea(
                  child: Row(
                    children: [
                      Container(
                        width: 32,
                        child: IconButton(
                          icon: Icon(Icons.add),
                          color: kWhiteColor,
                          onPressed: () {},
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.photo_camera),
                        color: kWhiteColor,
                        onPressed: () {},
                      ),
                      Expanded(
                        child: Container(
                          height: 42,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Aa",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 48,
                        child: SizedBox(
                          child: FlatButton(
                            onPressed: () {},
                            child: Image.asset(
                              "assets/images/send_rocket.png",
                              color: kWhiteColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildMessageBar() {
    return AppBar(
      automaticallyImplyLeading: true,
      title: Padding(
        padding: EdgeInsets.only(top: 16),
        child: Text(
          'OKASAN',
          style: GoogleFonts.balooTammudu2(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: kWhiteColor,
          ),
        ),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
      ],
      elevation: 0,
      backgroundColor: kPrimaryColor,
    );
  }
}
