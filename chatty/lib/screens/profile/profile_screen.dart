import 'package:chatty/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController searchTextEditingController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarProfile(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg_profile_page.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              color: kPrimaryColor,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: searchTextEditingController,
                      // style: TextStyle(fontSize: 12.5, height: 1.5, color: kWhiteColor),
                      decoration: InputDecoration(
                        // labelText: "Search...",
                        // labelStyle: TextStyle(color: kWhiteColor),
                        hintText: "Search...",
                        hintStyle: TextStyle(color: Colors.white54),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 1, horizontal: 24),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: BorderSide(color: kWhiteColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: BorderSide(color: kWhiteColor),
                        ),
                        suffixIcon: Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 2.0, 16.0, 2.0),
                          child: IconButton(
                            icon: Icon(Icons.search),
                            color: kWhiteColor,
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBarProfile() {
    return AppBar(
      automaticallyImplyLeading: false,
      leadingWidth: 88.0,
      leading: Padding(
        padding: EdgeInsets.only(left: 16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 36.0,
              backgroundImage: AssetImage("assets/images/Ellipse 5.png"),
            ),
          ],
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(top: 16),
        child: Text(
          'Chris',
          style: GoogleFonts.balooTammudu2(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: kWhiteColor,
          ),
        ),
      ),
      centerTitle: false,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 18.0),
          child: IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ),
      ],
      elevation: 0,
      backgroundColor: kPrimaryColor,
    );
  }
}
