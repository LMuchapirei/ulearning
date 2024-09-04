import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:ulearning/pages/welcome/bloc/welcome_blocs.dart';
import 'package:ulearning/pages/welcome/bloc/welcome_events.dart';
import 'package:ulearning/pages/welcome/bloc/welcome_states.dart';

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
        child:
            BlocBuilder<WelcomeBloc, WelcomeState>(builder: (context, state) {
          return Scaffold(
              body: Container(
                  margin: EdgeInsets.only(top: 34.h),
                  width: 375.w,
                  child: Stack(alignment: Alignment.center, children: [
                    PageView(
                        onPageChanged: (index) {
                          /// Is this way allowed
                          state.page = index;
                          BlocProvider.of<WelcomeBloc>(context)
                              .add(WelcomeEvent());
                        },
                        children: [
                          _page(
                              1,
                              context,
                              "Next",
                              "First See Learning",
                              "Forget about using paper,all knowledge centralised in one place",
                              "image-path"),
                          _page(
                              2,
                              context,
                              "Next",
                              "Track learning progress",
                              "Keep in touch with your current learning progress and see where you need to put more work in!",
                              "image-path"),
                          _page(
                              3,
                              context,
                              "Get started",
                              "Always a blast to keep learning!",
                              "Life long learning is like compounding interest except it does not suffer from inflation.Stay relevant by upskilling!",
                              "image-path"),
                        ]),
                    Positioned(
                        right: 0,
                        left: 0,
                        bottom: 50.h,
                        child: DotsIndicator(
                            dotsCount: 3,
                            position: state.page,
                            mainAxisAlignment: MainAxisAlignment.center,
                            decorator: DotsDecorator(
                                color: Colors.grey,
                                activeColor: Colors.blue,
                                size: const Size.square(8.0),
                                activeSize: const Size(10.0, 8.0),
                                activeShape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)))))
                  ])));
        }));
  }

  Column _page(int index, BuildContext context, String buttonName, String title,
      String subTitle, String imagePath) {
    return Column(children: [
      SizedBox(width: 345.w, height: 345.w, child: const Text("Image one")),
      Container(
          child: Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 24.sp))),
      Container(
          width: 375.w,
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Text(subTitle,
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
              child: Text(buttonName,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.sp)))),
    ]);
  }
}
