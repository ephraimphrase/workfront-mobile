import 'package:flutter/material.dart';
import 'package:work_front/components/app_button.dart';
import 'package:work_front/components/app_text.dart';
import 'package:work_front/constants/app_assets.dart';
import 'package:work_front/constants/app_colors.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 70, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(image: AssetImage(AppAsset.appIconMini))
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppText("Let's help you", size: 48,)
                    ],
                  ),
                  RichText(
                    text: TextSpan(
                      text: "manage ",
                      style: TextStyle(color: AppColors.primaryColor, fontSize: 48, fontWeight: FontWeight.w600),
                      children: const [
                        TextSpan(text: "your", style: TextStyle(fontSize: 48, fontWeight: FontWeight.w400, color: Colors.black))
                      ]
                    )
                  ),
                  const AppText("freelance gigs", size: 48, fontWeight: FontWeight.w400,)
                ],
              ),
            ),
            const SizedBox(height: 250,),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                AppButton(
                  onPressed: () {},
                  color: AppColors.secondaryColor,
                  width: 335,
                  height: 60,
                  radius: 22,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage(AppAsset.googleIcon)),
                      SizedBox(width: 20,),
                      AppText("Continue with Google", color: Colors.white,)
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}