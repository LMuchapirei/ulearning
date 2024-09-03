import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Scaffold(
            body: Container(
                margin: EdgeInsets.only(top: 34.h),
                width: 375.w,
                child: Stack(children: [
                  PageView(children: [_page(), _page(), _page()])
                ]))));
  }

  Column _page() {
    return Column(children: [
      SizedBox(width: 345.w, height: 345.w, child: const Text("Image one")),
      Container(
          child: Text("First See Learning",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 24.sp))),
      Container(
          width: 375.w,
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Text(
              "Forget about using paper,all knowledge centralised in one place",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontWeight: FontWeight.normal,
                  fontSize: 14.sp))),
      Container(
          margin: EdgeInsets.only(top: 100.h, left: 25.w, right: 25.w),
          width: 325.2,
          height: 50.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.w)),
              color: Colors.blue,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1))
              ]),
          child: Center(
              child: Text("Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.sp)))),
    ]);
  }
}
