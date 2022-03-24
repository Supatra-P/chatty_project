// ignore_for_file: deprecated_member_use

import 'package:chatty/constants.dart';
import 'package:chatty/screens/signInOrsignUp/signIn_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({ Key? key }) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                  'Create\nNew Account',
                  style: GoogleFonts.aclonica(
                    fontSize: 30,
                    color: kBlackColor,
                  ),
                ),
                // Spacer(),
                SizedBox(
                  height: 54,
                ),

                // SignUpForm(),

                Form(
                  // key: _formKey,
                  child: Column(
                    children: [
                      // buildNameFormField(),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Name",
                          labelStyle: TextStyle(color: kBlackColor),
                          hintText: "Enter your name",
                          // decoration onto theme.dart
                        ),
                      ),
                      SizedBox(height: 16),
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
                      SizedBox(height: 16),
                      // buildPasswordConfirmFormField(),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Confirm Password",
                          labelStyle: TextStyle(color: kBlackColor),
                          hintText: "Enter your password",
                          // decoration onto theme.dart
                        ),
                      ),
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
                      DefaultButton(text: "SIGN UP"),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SigninScreen())),
                  child: Text(
                    "Sign in",
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

// class SignUpForm extends StatefulWidget {
//   @override
//   State<SignUpForm> createState() => _SignUpFormState();
// }

// class _SignUpFormState extends State<SignUpForm> {
//   // final _formKey = GlobalKey<FormState>();
//   // final List<String> errors = [];
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       // key: _formKey,
//       child: Column(
//         children: [
//           // buildNameFormField(),
//           TextFormField(
//             decoration: InputDecoration(
//               labelText: "Name",
//               labelStyle: TextStyle(color: kBlackColor),
//               hintText: "Enter your name",
//               // decoration onto theme.dart
//             ),
//           ),
//           SizedBox(height: 16),
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
//           SizedBox(height: 16),
//           // buildPasswordConfirmFormField(),
//           TextFormField(
//             obscureText: true,
//             decoration: InputDecoration(
//               labelText: "Confirm Password",
//               labelStyle: TextStyle(color: kBlackColor),
//               hintText: "Enter your password",
//               // decoration onto theme.dart
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // TextFormField buildPasswordConfirmFormField() {
//   //   return TextFormField(
//   //     obscureText: true,
//   //     decoration: InputDecoration(
//   //       labelText: "Confirm Password",
//   //       labelStyle: TextStyle(color: kBlackColor),
//   //       hintText: "Enter your password",
//   //       // decoration onto theme.dart
//   //     ),
//   //   );
//   // }

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

//   // TextFormField buildNameFormField() {
//   //   return TextFormField(
//   //     decoration: InputDecoration(
//   //       labelText: "Name",
//   //       labelStyle: TextStyle(color: kBlackColor),
//   //       hintText: "Enter your name",
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
          MaterialPageRoute(builder: (context) => SigninScreen()),
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
