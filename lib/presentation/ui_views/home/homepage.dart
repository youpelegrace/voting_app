import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:voting_app/presentation/ui_views/dashboard/dashboard_view.dart';
import 'package:voting_app/presentation/ui_views/notification/notification_view.dart';
import 'package:voting_app/presentation/ui_views/profile/profile_view.dart';
import 'package:voting_app/presentation/ui_views/vote/vote_view.dart';
import 'package:voting_app/styles/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[
    const DashboardView(),
    const VoteView(),
    const NotificationView(),
    const ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,
        elevation: 20,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 35.h,
              ),
              activeIcon: Icon(
                Icons.home_outlined,
                color: kPrimaryColor,
                size: 35.h,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/Vector.svg'),
              activeIcon: SvgPicture.asset(
                'assets/images/Vector.svg',
                color: kPrimaryColor,
              ),
              label: 'Vote'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/notification.svg'),
              activeIcon: SvgPicture.asset(
                'assets/images/notification.svg',
                color: kPrimaryColor,
              ),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
                size: 35.h,
              ),
              activeIcon: Icon(
                Icons.person_outlined,
                size: 35.h,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
