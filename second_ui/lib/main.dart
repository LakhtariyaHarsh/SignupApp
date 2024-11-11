import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_ui/splash_screeen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: const MaterialApp(
        title: 'Sarkari Result App',
        debugShowCheckedModeBanner: false,
        home: SplashScreeen(),
      ),
    );
  }
}

