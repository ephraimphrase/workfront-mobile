import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_front/components/app_text.dart';
import 'package:work_front/constants/app_assets.dart';
import 'package:work_front/constants/app_colors.dart';
import 'package:work_front/views/gigs_views/group_gigs_view.dart';
import 'package:work_front/views/gigs_views/personal_gigs_view.dart';

class GigsView extends StatelessWidget {
  const GigsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText("Balance", size: 14, fontWeight: FontWeight.w400, color: AppColors.textHeader,),
              const Row(
                children: [
                  AppText("₦3,250,000", size: 24, fontWeight: FontWeight.w600,),
                  SizedBox(width: 5,),
                  Image(image: AssetImage(AppAsset.hiddenIcon))
                ],
              ),
              const SizedBox(height: 30,),
              GestureDetector(
                onTap: () {
                  Get.to(const PersonalGigsView());
                },
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    width: 335,
                    height: 103,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      // border: Border.all(width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Image(image: AssetImage(AppAsset.personalIcon)),
                            const SizedBox(width: 20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText("Personal Gigs", size: 12, fontWeight: FontWeight.w400, color: AppColors.cardHeader),
                                const AppText("₦2,550,000", size: 16, fontWeight: FontWeight.w700,)
                              ],
                            ),
                          ],
                        ), 
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(image: AssetImage(AppAsset.arrowRight))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              GestureDetector(
                onTap: () {
                  Get.to(const GroupGigsView());
                },
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.secondaryColor,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    width: 335,
                    height: 103,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      // border: Border.all(width: 1),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image(image: AssetImage(AppAsset.groupIcon)),
                            SizedBox(width: 20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText("Group Gigs", size: 12, fontWeight: FontWeight.w400, color: Colors.white),
                                AppText("₦700,000", size: 16, fontWeight: FontWeight.w700, color: Colors.white,)
                              ],
                            ),
                          ],
                        ), 
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(image: AssetImage(AppAsset.arrowRightWhite))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}