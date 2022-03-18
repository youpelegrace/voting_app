import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/presentation/widgets/profile_widget.dart';
import 'package:voting_app/styles/colors.dart';
import 'package:voting_app/styles/text_styles.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Profile',
          style: robotoStyle.copyWith(
              color: Colors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.w400),
        ),
        leading: const Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.black,
        ),
        actions: [
          Image.asset(
            "assets/images/edit.png",
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 23.w, right: 23.w),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 150.h,
                width: 150.w,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.blue),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Cameroun Williamson',
              style: robotoStyle.copyWith(
                  color: kPrimaryColor,
                  letterSpacing: 2,
                  fontSize: 35.sp,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            const ProfileCard(
              title: 'Cameroun Williamson',
              subTitle: 'Fullname',
            ),
            const SizedBox(
              height: 20,
            ),
            const ProfileCard(
              title: 'United Republic of Africa',
              subTitle: 'Nationality',
            ),
            const SizedBox(
              height: 20,
            ),
            const ProfileCard(
              title: '(+234)806655654',
              subTitle: 'Phone number',
            ),
            const SizedBox(
              height: 20,
            ),
            const ProfileCard(
              title: 'April 19 2020',
              subTitle: 'DOB',
            ),
            const SizedBox(
              height: 20,
            ),
            const ProfileCard(
              title: 'Adamawa',
              subTitle: 'State of Origin',
            )
          ],
        ),
      ),
    );
  }
}
