import 'dart:async';
import 'package:animation/navigation/second%20page.dart';
import 'package:flutter/material.dart';

class Splashh extends StatefulWidget {
  const Splashh({Key? key}) : super(key: key);

  @override
  State<Splashh> createState() => _SplashhState();
}

class _SplashhState extends State<Splashh> {
  bool showLogo = false;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      setState(() {
        showLogo = true;

        Timer(const Duration(milliseconds: 500), () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const SecondScreen()),
          );
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedOpacity(
        opacity: showLogo ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 500),
        child: Center(
          child: Image.network(
            "https://www.code-brew.com/wp-content/themes/Avada-Child-Theme/media/2022/09/had_technology_3rd_icn_4.png",
            width: 300,
            height: 200,
          ),
        ),
      ),
    );
  }
}
