import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_front/components/app_text.dart';
import 'package:work_front/constants/app_assets.dart';
import 'package:work_front/constants/app_colors.dart';

class GigDetailsView extends StatelessWidget {
  const GigDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Image(image: AssetImage(AppAsset.backIcon))),
        title: const AppText("WP ecommerce site",
            size: 18, fontWeight: FontWeight.w700),
        elevation: 0,
        backgroundColor: AppColors.backgroundColor,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
                child: ListView(
              children: [
                Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              "Gig Amount",
                              size: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.gray2,
                            ),
                            AppText(
                              "₦180,000",
                              size: 24,
                              fontWeight: FontWeight.w600,
                              color: AppColors.black1,
                            ),
                          ],
                        ),
                      ),
                      Image.asset(AppAsset.waveform),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Material(
                            color: AppColors.deepBlue,
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              width: 335,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                // border: Border.all(width: 1),
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Stack(
                                        children: [
                                          Image(
                                              image: AssetImage(
                                                  AppAsset.circleIcon)),
                                          Positioned(
                                            top: 6,
                                            left: 5,
                                            child: Image(
                                                image: AssetImage(
                                                    AppAsset.gigIcon1)),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          AppText(
                                            "WP ecommerce site",
                                            size: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                          AppText("Jan 8, 2023",
                                              size: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white)
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Image(
                                          image:
                                              AssetImage(AppAsset.arrowRight))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,)
                    ],
                  ),
                )
              ],
            ))
          ],
        ),
      )),
    );
  }
}
