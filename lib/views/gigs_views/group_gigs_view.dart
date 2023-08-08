import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_front/components/app_text.dart';
import 'package:work_front/constants/app_assets.dart';
import 'package:work_front/constants/app_colors.dart';
import 'package:work_front/views/gigs_views/new_gig_view.dart';
import 'package:work_front/views/gigs_views/personal_gigs_view.dart';

class GroupGigsView extends StatelessWidget {
  const GroupGigsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.to(const NewGigView());
        },
        backgroundColor: AppColors.primaryColor,
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        leading: GestureDetector(onTap: () => Get.back(), child: const Image(image: AssetImage(AppAsset.backIcon))),
        title: const AppText("Group Gigs", size: 18, fontWeight: FontWeight.w700),
        elevation: 0,
        backgroundColor: AppColors.backgroundColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
            Expanded(
              child: ListView(
                children: [ 
                  // Row(
                  //   children: [
                  //     GestureDetector(onTap: () => Get.back(), child: const Image(image: AssetImage(AppAsset.backIcon))),
                  //     const SizedBox(width: 10,),
                  //     const AppText("Group Gigs", size: 18, fontWeight: FontWeight.w700)
                  //   ],
                  // ),
                  // const SizedBox(height: 30,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText("Gig Balance", size: 14, fontWeight: FontWeight.w400, color: AppColors.textHeader,),
                      const AppText("₦700,000", size: 24, fontWeight: FontWeight.w600,),
                      const SizedBox(height: 30,),
                      GestureDetector(
                        onTap: () {
                          Get.to(const PersonalGigsView());
                        },
                        child: Material(
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Stack(
                                      children: [
                                        Image(image: AssetImage(AppAsset.circleIcon)),
                                        Positioned(
                                          top: 13,
                                          left: 5,
                                          child: Image(image: AssetImage(AppAsset.gigIcon5)),
                                        )
                                      ],
                                    ),
                                    const SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const AppText("WP ecommerce site", size: 14, fontWeight: FontWeight.w700,),
                                        AppText("Jan 10, 2023", size: 12, fontWeight: FontWeight.w400, color: AppColors.cardHeader)
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
                          Get.to(const PersonalGigsView());
                        },
                        child: Material(
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Stack(
                                      children: [
                                        Image(image: AssetImage(AppAsset.circleIcon)),
                                        Positioned(
                                          top: 5.5,
                                          left: 5,
                                          child: Image(image: AssetImage(AppAsset.gigIcon6)),
                                        )
                                      ],
                                    ),
                                    const SizedBox(width: 20,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const AppText("Fintech UI redesign", size: 14, fontWeight: FontWeight.w700,),
                                        AppText("Jan 10, 2023", size: 12, fontWeight: FontWeight.w400, color: AppColors.cardHeader)
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
                    ],
                  )
                ]
              ),
            ),
            const SizedBox(height: 20,)
            ],
          ),
        )
      ),
    );
  }
}