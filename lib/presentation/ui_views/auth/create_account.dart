import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/presentation/ui_views/home/homepage.dart';
import 'package:voting_app/presentation/widgets/button.dart';
import 'package:voting_app/presentation/widgets/text_field_input.dart';
import 'package:voting_app/styles/colors.dart';
import 'package:voting_app/styles/text_styles.dart';
import 'package:voting_app/utils/navigator.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

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
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create an account',
                    style: robotoStyle.copyWith(
                        color: kSecondaryColor,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text(
                    'Full Name',
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
                    height: 24.h,
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
                    height: 24.h,
                  ),
                  Text(
                    'Nationality',
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
                    height: 24.h,
                  ),
                  Text(
                    'Date od Birth',
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
                    height: 24.h,
                  ),
                  Text(
                    'Phone Number',
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
                    height: 24.h,
                  ),
                  Text(
                    'Security pin',
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
                    height: 24.h,
                  ),
                  Text(
                    'Confirm security pin',
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
                    height: 70.h,
                  ),
                  Button(
                    title: "Create account",
                    onClick: () {
                      context.navigate(const HomePage());
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
