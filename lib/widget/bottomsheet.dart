import 'package:flutter/material.dart';
import 'package:onboardingapp/utils/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageOne extends StatelessWidget {
  const PageOne({
    super.key,
    required this.controller,
    required this.skipOnTap,
    required this.nextOnTap,
  });

  final PageController controller;
  final GestureTapCallback skipOnTap;
  final GestureTapCallback nextOnTap;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: const ScrollingDotsEffect(
              dotHeight: 10,
              dotWidth: 10,
              dotColor: Color(0xffC4C4C4),
              activeDotColor:
                  primaryColor, // change color in lib/utils/colors.dart
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: skipOnTap,
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color:
                            primaryColor, // change color in lib/utils/colors.dart
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                InkWell(
                  onTap: nextOnTap,
                  child: Container(
                      height: 45,
                      width: 165,
                      decoration: BoxDecoration(
                        color:
                            primaryColor, // change color in lib/utils/colors.dart
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                            color: Colors.white,
                          ),
                        ],
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({
    super.key,
    required this.controller,
    required this.skipOnTap,
    required this.nextOnTap,
  });

  final PageController controller;
  final GestureTapCallback skipOnTap;
  final GestureTapCallback nextOnTap;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: const ScrollingDotsEffect(
              dotHeight: 10,
              dotWidth: 10,
              dotColor: Color(0xffC4C4C4),
              activeDotColor:
                  primaryColor, // change color in lib/utils/colors.dart
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: skipOnTap,
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color:
                            primaryColor, // change color in lib/utils/colors.dart
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                InkWell(
                  onTap: nextOnTap,
                  child: Container(
                      height: 45,
                      width: 165,
                      decoration: BoxDecoration(
                        color:
                            primaryColor, // change color in lib/utils/colors.dart
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                            color: Colors.white,
                          ),
                        ],
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({
    super.key,
    required this.controller,
    required this.onTap,
  });

  final PageController controller;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: const ScrollingDotsEffect(
              dotHeight: 10,
              dotWidth: 10,
              dotColor: Color(0xffC4C4C4),
              activeDotColor: primaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 45),
            child: InkWell(
              onTap: onTap,
              child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
