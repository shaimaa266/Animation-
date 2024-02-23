import 'package:animation/navigation/navigated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const  NavigatedPages()));
            },
            icon: const Icon(Icons.arrow_back)),
        leadingWidth: 5,
        title:  Center(
          child: Text("Second Screen "),
        ),
        titleTextStyle:  TextStyle(
            color: Colors.pink, fontSize: 29.sp, fontWeight: FontWeight.w400),
      ),
      body: Column(
        children: [
          Image.network(
            "https://www.code-brew.com/wp-content/themes/Avada-Child-Theme/media/2022/09/had_technology_3rd_icn_4.png",
            width: 400.w,
            height: 300.h,
          ),
        ],
      ),
    );
  }
}
