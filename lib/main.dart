import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/presentation/ui_views/home/homepage.dart';
import 'package:voting_app/utils/navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
          builder: (context, widget) {
            //add this line
            ScreenUtil.setContext(context);
            return MediaQuery(
                //Setting font does not change with system font size
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: widget!);
          },
          debugShowCheckedModeBanner: false,
          navigatorKey: navigator.key,
          title: 'Flutter Demo',
          home: const HomePage()),
    );
  }
}
