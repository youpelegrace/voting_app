import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/styles/text_styles.dart';

class ProfileCard extends StatelessWidget {
  final String title;
  final String subTitle;

  const ProfileCard({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 14,
            offset: const Offset(0, 9), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, top: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: robotoStyle.copyWith(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              subTitle,
              style: robotoStyle.copyWith(
                  color: Colors.grey.shade500,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
