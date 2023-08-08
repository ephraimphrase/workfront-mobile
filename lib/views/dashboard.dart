import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_front/components/app_text.dart';
import 'package:work_front/constants/app_assets.dart';
import 'package:work_front/constants/app_colors.dart';
import 'package:work_front/controllers/bottom_nav_controller.dart';

class DashBoard extends StatelessWidget {
  DashBoard({super.key});
  final bottombarcontroller = Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColors.backgroundColor,
            leading: (bottombarcontroller.selectedindex.value == 0)
                ? Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset(AppAsset.profileIcon),
                )
                : null,
            title: (bottombarcontroller.selectedindex.value == 1)
                ? AppText(
                    "Gigs",
                    size: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textHeader,
                  )
                : (bottombarcontroller.selectedindex.value == 2)
                    ? AppText(
                        "Explore",
                        size: 24,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textHeader,
                      )
                    : (bottombarcontroller.selectedindex.value == 3)
                        ? AppText(
                            "More",
                            size: 24,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textHeader,
                          )
                        : (bottombarcontroller.selectedindex.value == 0)
                            ? AppText(
                                "Hi, Kathy",
                                size: 24,
                                fontWeight: FontWeight.w700,
                                color: AppColors.gray1,
                              )
                            : null,
            actions: (bottombarcontroller.selectedindex.value == 0) ? [Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.asset(AppAsset.notificationIcon),
            )] : null,
          ),
          backgroundColor: AppColors.backgroundColor,
          body: SafeArea(
            child: bottombarcontroller.bottomTabs
                .elementAt(bottombarcontroller.selectedindex.value),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: bottombarcontroller.selectedindex.value == 0
                    ? const Image(image: AssetImage(AppAsset.homeActive))
                    : const Image(image: AssetImage(AppAsset.homeInactive)),
                label: "Home",
                backgroundColor: AppColors.secondaryColor,
              ),
              BottomNavigationBarItem(
                  icon: bottombarcontroller.selectedindex.value == 1
                      ? const Image(image: AssetImage(AppAsset.gigsActive))
                      : const Image(image: AssetImage(AppAsset.gigsInactive)),
                  label: "Gigs",
                  backgroundColor: AppColors.secondaryColor),
              BottomNavigationBarItem(
                  icon: bottombarcontroller.selectedindex.value == 2
                      ? const Image(image: AssetImage(AppAsset.homeActive))
                      : const Image(
                          image: AssetImage(AppAsset.exploreInactive)),
                  label: "Explore",
                  backgroundColor: AppColors.secondaryColor),
              BottomNavigationBarItem(
                  icon: bottombarcontroller.selectedindex.value == 3
                      ? const Image(image: AssetImage(AppAsset.homeActive))
                      : const Image(image: AssetImage(AppAsset.moreInactive)),
                  label: "More",
                  backgroundColor: AppColors.secondaryColor)
            ],
            onTap: bottombarcontroller.changeTabIndex,
            currentIndex: bottombarcontroller.selectedindex.value,
          ),
        ));
  }
}
