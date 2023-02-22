import 'package:faramove_assessment_test/router/app_router.dart';
import 'package:faramove_assessment_test/view/home_page.dart';
import 'package:faramove_assessment_test/view/homely.dart';
import 'package:faramove_assessment_test/view/landing_page.dart';
import 'package:faramove_assessment_test/view/signin.dart';
import 'package:faramove_assessment_test/widgets/bottom_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   systemNavigationBarColor: Colors.white,
  //   statusBarColor: Colors.white,
  // ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Faramove Assessment Test',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              color: Colors.white,
              systemOverlayStyle: SystemUiOverlayStyle.dark)),
      debugShowCheckedModeBanner: false,
      // home: const PodcastPlayingPage(),
      // home: const HomelyPage(),
      home: const LandingPage(),
      // home: const CommunityPage(),
      // initialRoute: "/home",
      // onGenerateRoute: appRouter,
    );
  }
}
