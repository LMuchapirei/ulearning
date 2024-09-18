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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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

Widget buildTextField(String hintText, String textType, String iconName) {
  return Container(
      width: 325.w,
      height: 50.h,
      margin: EdgeInsets.only(bottom: 20.h),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.w)),
          border: Border.all(color: Colors.black)),
      child: Row(children: [
        Container(
            width: 16.w,
            height: 16.w,
            margin: EdgeInsets.only(left: 17.w),
            child: Image.asset("assets/icons/$iconName.png")),
        SizedBox(
            width: 270.w,
            height: 50.w,
            child: TextField(
                keyboardType: TextInputType.multiline,
                autocorrect: false,
                obscureText: textType.isPassword(),
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Avenir",
                    fontWeight: FontWeight.normal,
                    fontSize: 12.sp),
                decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    disabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)))))
      ]));
}

Widget forgotPassword() {
  return Container(
    width: 260.w,
    height: 44.h,
    child: GestureDetector(
        onTap: () {},
        child: const Text("Forgot password",
            style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue))),
  );
}

Widget buildLogInAndRegButton(String buttonName, ButtonType buttonType) {
  return GestureDetector(
      onTap: () {},
      child: Container(
          width: 325.w,
          height: 50.h,
          margin: EdgeInsets.only(
              top: buttonType == ButtonType.login ? 40.h : 20.h),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color:
                  buttonType == ButtonType.login ? Colors.blue : Colors.white,
              borderRadius: BorderRadius.circular(15.w),
              border: buttonType == ButtonType.login
                  ? Border.all(color: Colors.transparent)
                  : Border.all(color: Colors.black),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 1),
                  color: Colors.grey.withOpacity(0.1),
                )
              ]),
          child: Text(buttonName,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.normal,
                  color: buttonType == ButtonType.login
                      ? Colors.white
                      : Colors.black))));
}

extension StrUtils on String {
  bool isPassword() {
    return this == "password";
  }
}

enum ButtonType { register, login }
