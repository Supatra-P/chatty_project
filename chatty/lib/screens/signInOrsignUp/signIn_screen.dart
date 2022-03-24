// ignore_for_file: deprecated_member_use

import 'package:chatty/constants.dart';
import 'package:chatty/screens/profile/profile_screen.dart';
import 'package:chatty/screens/signInOrsignUp/signUp_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({ Key? key }) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.8),
            child: Column(
              children: [
                Spacer(
                  flex: 2,
                ),
                Text(
                  'Sign In',
                  style: GoogleFonts.aclonica(
                    fontSize: 30,
                    color: kBlackColor,
                  ),
                ),
                Spacer(),

                // SignInForm(),

                Form(
                  child: Column(
                    children: [
                      // buildEmailFormField(),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color: kBlackColor,
                          ),
                          hintText: "Enter your email",
                          // decoration onto theme.dart
                        ),
                      ),
                      SizedBox(height: 16),
                      // buildPasswordFormField(),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(color: kBlackColor),
                          hintText: "Enter your password",
                          // decoration onto theme.dart
                        ),
                      ),
                      // SizedBox(height: 8),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "forgot password?",
                              style: TextStyle(
                                color: kPrimaryColor,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                Spacer(),
                // Button
                Expanded(
                  flex: 3,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      DefaultButton(text: "SIGN IN"),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupScreen(),
                    ),
                  ),
                  child: Text(
                    "Create New Account",
                    style: TextStyle(
                        color: kPrimaryColor,
                        decoration: TextDecoration.underline),
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class SignInForm extends StatefulWidget {
//   @override
//   State<SignInForm> createState() => _SignInFormState();
// }

// class _SignInFormState extends State<SignInForm> {
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       child: Column(
//         children: [
//           // buildEmailFormField(),
//           TextFormField(
//             keyboardType: TextInputType.emailAddress,
//             decoration: InputDecoration(
//               labelText: "Email",
//               labelStyle: TextStyle(
//                 color: kBlackColor,
//               ),
//               hintText: "Enter your email",
//               // decoration onto theme.dart
//             ),
//           ),
//           SizedBox(height: 16),
//           // buildPasswordFormField(),
//           TextFormField(
//             obscureText: true,
//             decoration: InputDecoration(
//               labelText: "Password",
//               labelStyle: TextStyle(color: kBlackColor),
//               hintText: "Enter your password",
//               // decoration onto theme.dart
//             ),
//           ),
//           // SizedBox(height: 8),
//           Container(
//             alignment: Alignment.centerLeft,
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 16),
//               child: TextButton(
//                 onPressed: () {},
//                 child: Text(
//                   "forgot password?",
//                   style: TextStyle(
//                     color: kPrimaryColor,
//                     decoration: TextDecoration.underline,
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   // TextFormField buildPasswordFormField() {
//   //   return TextFormField(
//   //     obscureText: true,
//   //     decoration: InputDecoration(
//   //       labelText: "Password",
//   //       labelStyle: TextStyle(color: kBlackColor),
//   //       hintText: "Enter your password",
//   //       // decoration onto theme.dart
//   //     ),
//   //   );
//   // }

//   // TextFormField buildEmailFormField() {
//   //   return TextFormField(
//   //     keyboardType: TextInputType.emailAddress,
//   //     decoration: InputDecoration(
//   //       labelText: "Email",
//   //       labelStyle: TextStyle(
//   //         color: kBlackColor,
//   //       ),
//   //       hintText: "Enter your email",
//   //       // decoration onto theme.dart
//   //     ),
//   //   );
//   // }
// }

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        color: kPrimaryColor,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfileScreen()),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: kWhiteColor,
          ),
        ),
      ),
    );
  }
}
