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
      margin: EdgeInsets.only(top: 40.h, bottom: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _socialLoginIcon("google"),
          _socialLoginIcon("apple"),
          _socialLoginIcon("facebook")
        ],
      ));
}

Widget _socialLoginIcon(String iconName) {
  return GestureDetector(
      onTap: () {},
      child: SizedBox(
          width: 40.w,
          height: 40.w,
          child: Image.asset("assets/icons/$iconName.png")));
}

Widget resusableText(String text) {
  return Container(
      margin: EdgeInsets.only(bottom: 5.h),
      child: Text("$text",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
              color: Colors.grey.withOpacity(0.7))));
}
