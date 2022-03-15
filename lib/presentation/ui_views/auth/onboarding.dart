import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/presentation/ui_views/auth/loginboard.dart';
import 'package:voting_app/presentation/ui_views/auth/onboarding2.dart';
import 'package:voting_app/presentation/widgets/button.dart';
import 'package:voting_app/styles/colors.dart';
import 'package:voting_app/styles/text_styles.dart';
import 'package:voting_app/utils/navigator.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: <Widget>[
              Container(color: Colors.white70),
              const Positioned(
                left: 0,
                top: 0,
                child: Image(
                  image: AssetImage("assets/images/onboarding.png"),
                ),
              ),
              Positioned(
                top: 70.h,
                right: 25.w,
                child: InkWell(
                  onTap: () => const LoginBoard(),
                  child: Text(
                    "Skip",
                    style: nunitoStyle.copyWith(
                        color: kSecondaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp),
                  ),
                ),
              ),
              Positioned(
                left: 62.h,
                top: 150.h,
                child: const Image(
                  image: AssetImage("assets/images/img.png"),
                ),
              ),
              Positioned(
                right: 25.w,
                bottom: 50.h,
                child: SizedBox(
                  width: 172.h,
                  child: Button(
                    title: "Next",
                    onClick: () {
                      context.navigate(const OnboardingTwo());
                    },
                  ),
                ),
              ),
              Positioned(
                left: 100.w,
                top: 550.h,
                right: 25.w,
                child: Text(
                  "Vote with Ease",
                  style: nunitoStyle.copyWith(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 32.sp),
                ),
              ),
              Positioned(
                  left: 30.w,
                  bottom: 75.h,
                  child: Row(
                    children: [
                      Container(
                        height: 5.h,
                        width: 35.h,
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10.r)),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Container(
                        height: 5.h,
                        width: 10.h,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10.r)),
                      )
                    ],
                  )),
              Positioned(
                left: 48.w,
                top: 620.h,
                right: 48.w,
                child: Text(
                  "Vote for your favorite candidate wherever you are.",
                  textAlign: TextAlign.center,
                  style: nunitoStyle.copyWith(
                      color: kMiniBlack,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
