import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                backgroundColor: Colors.white,
                appBar: AppBar(
                    bottom: PreferredSize(
                        preferredSize: const Size.fromHeight(1),
                        child: Container(
                            color: Colors.grey.withOpacity(0.5), height: 1.0)),
                    title: Text("Login",
                        style: TextStyle(
                            fontSize: 16.sp, color: Colors.black))))));
  }
}
