import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/presentation/ui_views/auth/create_account.dart';
import 'package:voting_app/presentation/ui_views/auth/login.dart';
import 'package:voting_app/presentation/widgets/button.dart';
import 'package:voting_app/styles/colors.dart';
import 'package:voting_app/styles/text_styles.dart';
import 'package:voting_app/utils/navigator.dart';

class LoginBoard extends StatelessWidget {
  const LoginBoard({Key? key}) : super(key: key);

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
                  image: AssetImage("assets/images/clip.jpg"),
                ),
              ),
              const Positioned(
                right: 0,
                bottom: 0,
                child: Image(
                  image: AssetImage("assets/images/ball4.png"),
                ),
              ),
              Positioned(
                left: 80.h,
                top: 280.h,
                child: const Image(
                  image: AssetImage("assets/images/logo.png"),
                ),
              ),
              Positioned(
                left: 25.w,
                top: 450.h,
                right: 25.w,
                child: Button(
                  title: "Log in",
                  onClick: () {
                    context.navigate(const LoginScreen());
                  },
                ),
              ),
              Positioned(
                left: 25.w,
                top: 550.h,
                right: 25.w,
                child: GestureDetector(
                  onTap: () {
                    context.navigate(const CreateAccount());
                  },
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1.h, color: kPrimaryColor),
                    ),
                    child: Center(
                      child: Text(
                        "Sign up",
                        style: nunitoStyle.copyWith(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w900,
                            fontSize: 20.sp),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
