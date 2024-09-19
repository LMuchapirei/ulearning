import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning/pages/signin/widgets/sign_in_widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  static const String routeName = "signIn";
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
              child: Column(children: [
                buildThirdPartyLogin(context),
                Center(child: resusableText("Or use your email account login")),
                Container(
                    margin: EdgeInsets.only(top: 36.h),
                    padding: EdgeInsets.only(left: 25.w, right: 25.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          resusableText("Email"),
                          SizedBox(height: 5.h),
                          buildTextField(
                              "Enter your email address", "email", "user"),
                          resusableText("Password"),
                          SizedBox(height: 5.h),
                          buildTextField(
                              "Enter your password", "password", "lock"),
                          forgotPassword(),
                          buildLogInAndRegButton("Login", ButtonType.login),
                          buildLogInAndRegButton(
                              "Register", ButtonType.register)
                        ]))
              ]),
            ),
            backgroundColor: Colors.white,
            appBar: buildAppBar()),
      ),
    );
  }
}
