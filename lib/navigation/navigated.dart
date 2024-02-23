import 'package:animation/navigation/second%20page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigatedPages extends StatelessWidget {
  const NavigatedPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.network(
              "https://www.code-brew.com/wp-content/themes/Avada-Child-Theme/media/2022/09/had_technology_3rd_icn_4.png",
              width: 300.w,
              height: 200.h,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      transitionDuration:  const Duration(milliseconds: 500),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = const  Offset(1.0, 0.0);
                        var end = Offset.zero;
                        var curve = Curves.fastOutSlowIn;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const  SecondScreen()));
            },
            child:  Text(
              "Move to Second Screen",
              style: TextStyle(color: Colors.indigo, fontSize: 25.sp),
            ),
          )
        ],
      ),
    );
  }
}
