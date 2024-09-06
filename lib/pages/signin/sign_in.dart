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
                resusableText("Or use your email account login"),
                Container(
                    margin: EdgeInsets.only(top: 66.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          resusableText("Email"),
                        ]))
              ]),
            ),
            backgroundColor: Colors.white,
            appBar: buildAppBar()),
      ),
    );
  }
}
