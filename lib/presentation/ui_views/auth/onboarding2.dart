import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/presentation/ui_views/auth/loginboard.dart';
import 'package:voting_app/presentation/widgets/button.dart';
import 'package:voting_app/styles/colors.dart';
import 'package:voting_app/styles/text_styles.dart';
import 'package:voting_app/utils/navigator.dart';

class OnboardingTwo extends StatelessWidget {
  const OnboardingTwo({Key? key}) : super(key: key);

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
                  image: AssetImage("assets/images/onboarding2.png"),
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
                top: 170.h,
                child: const Image(
                  image: AssetImage("assets/images/img2.png"),
                ),
              ),
              Positioned(
                right: 25.w,
                bottom: 50.h,
                child: SizedBox(
                  width: 172.h,
                  child: Button(
                    title: "Get Started",
                    onClick: () {
                      context.navigate(const LoginBoard());
                    },
                  ),
                ),
              ),
              Positioned(
                left: 70.w,
                top: 550.h,
                child: Text(
                  "Realtime Monitoring",
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
                        width: 10.h,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10.r)),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Container(
                        height: 5.h,
                        width: 35.h,
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10.r)),
                      ),
                    ],
                  )),
              Positioned(
                left: 25.w,
                top: 620.h,
                right: 25.w,
                child: Text(
                  "Get live result on every vote casted and each candidate results.",
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
