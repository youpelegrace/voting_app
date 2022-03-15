import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/presentation/ui_views/home/homepage.dart';
import 'package:voting_app/presentation/widgets/button.dart';
import 'package:voting_app/presentation/widgets/text_field_input.dart';
import 'package:voting_app/styles/colors.dart';
import 'package:voting_app/styles/text_styles.dart';
import 'package:voting_app/utils/navigator.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: kWhite,
        elevation: 0,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.keyboard_arrow_left,
            color: kblack,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 32.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back,',
                style: robotoStyle.copyWith(
                    color: kSecondaryColor,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Email',
                style: robotoStyle.copyWith(
                    color: kSecondaryColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormField(
                decoration: fieldInputDecoration(),
              ),
              SizedBox(
                height: 52.h,
              ),
              Text(
                'Security Pin',
                style: robotoStyle.copyWith(
                    color: kSecondaryColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormField(
                decoration: fieldInputDecoration(
                    suffixIcon: const Icon(Icons.visibility_off)),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Forgotten security pin?',
                style: robotoStyle.copyWith(
                    color: kSecondaryColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 116.h,
              ),
              Button(
                title: "Log in",
                onClick: () {
                  context.navigate(const HomePage());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
