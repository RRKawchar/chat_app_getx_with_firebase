import 'package:chat_app_using_getx/appTheme.dart';
import 'package:chat_app_using_getx/routes/routes.dart';
import 'package:chat_app_using_getx/screen/number_screen.dart';
import 'package:chat_app_using_getx/screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main()async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations(
     [
       DeviceOrientation.portraitUp,
       DeviceOrientation.portraitDown
     ]
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Chat App',
      darkTheme: darkThemeData(context),
      theme: lightThemeData(context),
      themeMode: ThemeMode.system,
      getPages: [
        GetPage(name: Routes.SPLASH_SCREEN, page: ()=>const SplashScreen()),
      ],
      initialRoute: Routes.SPLASH_SCREEN,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

