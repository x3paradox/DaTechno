import 'package:da_techno_app/my_flutter_app_icons.dart';
import 'package:da_techno_app/screen/accounts/accounts_view.dart';
import 'package:da_techno_app/screen/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';
import 'package:flutter/services.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/entypo_icons.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final Color navigationBarColor = Colors.white;
  int selectedIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: navigationBarColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: <Widget>[
            HomePage(),
            AccountView(),
            Container(
              alignment: Alignment.center,
              child: Icon(
                Icons.email_rounded,
                size: 56,
                color: Colors.green[400],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Icon(
                Icons.folder_rounded,
                size: 56,
                color: Colors.blue[400],
              ),
            ),
          ],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          child: WaterDropNavBar(
            backgroundColor: navigationBarColor,
            waterDropColor: Color(0xffFF4E00),
            onItemSelected: (int index) {
              setState(() {
                selectedIndex = index;
              });
              pageController.animateToPage(selectedIndex,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeOutQuad);
            },
            selectedIndex: selectedIndex,
            barItems: <BarItem>[
              BarItem(
                filledIcon: MyFlutterApp.frame,
                outlinedIcon: MyFlutterApp.home_outline,
              ),
              BarItem(
                  filledIcon: Icons.person_rounded,
                  outlinedIcon: Icons.person_outline_rounded),
              BarItem(
                filledIcon: MyFlutterApp.menu_fill,
                outlinedIcon: MyFlutterApp.frame_1,
              ),
              BarItem(
                filledIcon: Icons.folder_rounded,
                outlinedIcon: Icons.folder_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
