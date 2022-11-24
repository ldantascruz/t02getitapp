import 'package:flutter/material.dart';
import 'package:getit_app/splash/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(),
      routes: {},
      navigatorObservers: [
        /*
        DisposeObserver
        DIObserver () {
         if(currentRoute == 'homePage'){
          HomeSetup.setup();
          Setup.dispose()
         }
         */
      ],
    );
  }
}
