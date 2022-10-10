import 'package:flutter/material.dart';
import 'package:onboardingapp/widget/bottomsheet.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          Column(
            children: [
              // add text and image here.
              // tell your designer to group the characters together
              const SizedBox(height: 65),
              PageOne(
                controller: controller,
                nextOnTap: () => controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                ),
                skipOnTap: () {},
              ),
            ],
          ),
          Column(
            children: [
              // add text and image here.
              // tell your designer to group the characters together
              const SizedBox(height: 65),
              PageTwo(
                controller: controller,
                nextOnTap: () => controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                ),
                skipOnTap: () {},
              ),
            ],
          ),
          Column(
            children: [
              // add text and image here.
              // tell your designer to group the characters together
              const SizedBox(height: 65),
              PageThree(
                controller: controller,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
