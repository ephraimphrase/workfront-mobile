import 'package:get/state_manager.dart';
import 'package:work_front/views/navigation_tabs/explore_view.dart';
import 'package:work_front/views/navigation_tabs/gigs_view.dart';
import 'package:work_front/views/navigation_tabs/home_view.dart';
import 'package:work_front/views/navigation_tabs/more_view.dart';

class BottomNavigationController extends GetxController {
  var selectedindex = 0.obs;

  var bottomTabs = const [
    HomeView(),
    GigsView(),
    ExploreView(),
    MoreView()
  ];

  void changeTabIndex(index) {
    selectedindex.value = index;
    update();
  }
}