import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar() {
  return AppBar(
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(color: Colors.grey.withOpacity(0.5), height: 1.0)),
      title: Text("Login",
          style: TextStyle(fontSize: 16.sp, color: Colors.black)));
}

/// We need context for accessing the bloc
Widget buildThirdPartyLogin(BuildContext context) {
  return Container(
      alignment: Alignment.center,
      child: Row(
        children: [
          GestureDetector(
              onTap: () {},
              child: Container(
                  width: 40.w,
                  height: 40.w,
                  child: Image.asset("assets/icons/google.png"))),
          GestureDetector(
              onTap: () {},
              child: Container(
                  width: 40.w,
                  height: 40.w,
                  child: Image.asset("assets/icons/google.png"))),
        ],
      ));
}
