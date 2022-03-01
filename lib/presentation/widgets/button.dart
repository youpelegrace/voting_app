import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/styles/colors.dart';
import 'package:voting_app/styles/text_styles.dart';

class Button extends StatelessWidget {
  final String title;
  final Function()? onClick;
  const Button({Key? key, required this.title, this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      width: MediaQuery.of(context).size.width,
      child: InkWell(
        onTap: () {
          onClick!();
        },
        child: ElevatedButton(
            onPressed: onClick,
            style: ElevatedButton.styleFrom(
              primary: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: nunitoStyle.copyWith(
                    color: kWhite,
                    fontWeight: FontWeight.w900,
                    fontSize: 20.sp),
              ),
            )),
      ),
    );
  }
}
