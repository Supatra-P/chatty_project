import 'package:chatty/constants.dart';
import 'package:chatty/screens/messages/message_screen.dart';
import 'package:chatty/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  DatabaseMethods databaseMethods = new DatabaseMethods();
  TextEditingController searchTextEditingController =
      new TextEditingController();

  QuerySnapshot<Map<String, dynamic>>? searchSnapshot;

  initiateSearch() {
    databaseMethods
        .getUserByUsername(searchTextEditingController.text)
        .then((val) {
      setState(() {
        searchSnapshot = val;
      });
    });
  }

  createChatroomAndStartConversation(String userName) {
    List<String> users = [
      userName,
    ];
    // databaseMethods.createChatroom();
  }

  Widget searchList() {
    return searchSnapshot != null
        ? ListView.builder(
            itemCount: searchSnapshot?.docs.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return SearchTile(
                userName: searchSnapshot?.docs[index].data()['name'],
                userEmail: searchSnapshot?.docs[index].data()['email'],
              );
            })
        : Container();
  }

  @override
  void initState() {
    super.initState();
  }

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
            GestureDetector(
              onTap: () {
                initiateSearch();
              },
              child: Container(
                color: kPrimaryColor,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: searchTextEditingController,
                        style: TextStyle(color: kWhiteColor),
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
                            padding: EdgeInsets.fromLTRB(0.0, 2.0, 8.0, 2.0),
                            child: IconButton(
                              icon: Icon(Icons.search),
                              color: kWhiteColor,
                              onPressed: () {
                                initiateSearch();
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            searchList()
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
        padding: EdgeInsets.only(left: 8.0),
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
          padding: EdgeInsets.only(right: 14.0),
          child: IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {},
          ),
        ),
      ],
      elevation: 0,
      backgroundColor: kPrimaryColor,
    );
  }
}

class SearchTile extends StatelessWidget {
  const SearchTile({Key? key, required this.userName, required this.userEmail})
      : super(key: key);

  final String userName;
  final String userEmail;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Builder(
        builder: (context) => ChatCard(
          userName: userName,
          press: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MessageScreen(),
            ),
          ),
        ),
      ),
    );
  }
}

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    required this.userName,
    required this.press,
  }) : super(key: key);

  final String userName;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.75),
        child: Row(
          children: [
            Stack(
              children: [
                Text(
                  userName,
                  style: GoogleFonts.balooTammudu2(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: kWhiteColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
