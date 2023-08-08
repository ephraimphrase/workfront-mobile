import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_front/constants/app_assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: Get.height,
            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.appIcon))),
          )
        ],
      ),
    );
  }
}