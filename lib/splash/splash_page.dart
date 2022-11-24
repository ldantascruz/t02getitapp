import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:getit_app/home/home_controller.dart';
import 'package:getit_app/splash/splash_controller.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late final SplashController controller;
  @override
  void initState() {
    controller = SplashController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Try get a instance'),
          onPressed: () {
            GetIt.I.get<HomeController>();
          },
        ),
      ),
    );
  }
}
