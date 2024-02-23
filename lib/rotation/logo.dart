import 'package:flutter/material.dart';
import 'dart:math' as math;

class RotatedLogo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return rotatedLogoState();
  }
}

class rotatedLogoState extends State<RotatedLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    controller.repeat();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        leadingWidth: 5,
        title: Center(child: const Text("Third Screen ")),
        titleTextStyle: const TextStyle(
            color: Colors.black54, fontSize: 22, fontWeight: FontWeight.w400),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          builder: (_, child) {
            return Transform.rotate(
                angle: controller.value * 2 * math.pi, child: child);
          },
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
