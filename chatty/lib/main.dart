import 'package:chatty/constants.dart';
import 'package:chatty/routs.dart';
import 'package:chatty/screens/signInOrsignUp/signIn_screen.dart';
import 'package:chatty/screens/welcome/welcome_screen.dart';
import 'package:chatty/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      // home: WelcomeScreen(),
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
    );
  }
}