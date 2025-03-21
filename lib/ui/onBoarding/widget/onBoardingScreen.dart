import 'package:eco_eaters_app/core/routes/app_routes.dart';
import 'package:eco_eaters_app/core/routes/page_route_names.dart';
import 'package:eco_eaters_app/ui/onBoarding/onBoarding1.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/custom_elevated_button.dart';
import '../onBoarding2.dart';
import '../onBoarding3.dart';
import '../onBoarding4.dart';



class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnBoardingScreen> {
  PageController _pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              children: [
                OnBoardingPage1(),
                OnBoardingPage2(),
                OnBoardingPage3(),
                OnBoardingPage4()
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 4,
                  effect: ExpandingDotsEffect(
                    dotWidth: 10,
                    dotHeight: 10,
                    activeDotColor: AppColors.green,
                  ),
                ),
                SizedBox(height: 25),


                CustomElevatedButton(
                  text: currentPage == 0 ? "Get Started" : "Next",
                  buttonColor: AppColors.primaryColor,
                  textColor: AppColors.white,
                  borderRadius: 12,
                  fontSize: 18,
                  onPressed: () {
                    if (currentPage < 3) {
                      _pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease);
                    } else {
                      // Navigate to the main screen after onboarding
                      Navigator.pushReplacementNamed(context, "/home");
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}