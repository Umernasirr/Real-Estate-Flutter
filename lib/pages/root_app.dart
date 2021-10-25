import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/pages/home_page.dart';
import 'package:real_estate/pages/search_page.dart';
import 'package:real_estate/theme/colors.dart';
import 'package:animations/animations.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: getBody(),
      bottomNavigationBar: getBottomNavBar(),
    );
  }

  getAppBar() {
    return AppBar(title: const Text("App Header"), centerTitle: true);
  }

  Widget getBody() {
    List<Widget> pages = [
      HomePage(),
      SearchPage(),
      HomePage(),
      HomePage(),
    ];

    return PageTransitionSwitcher(
      transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
          FadeThroughTransition(
        animation: primaryAnimation,
        secondaryAnimation: secondaryAnimation,
        child: child,
      ),
      child: pages[pageIndex],
    );

    // return pages[pageIndex];
  }

  Widget getBottomNavBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Container(
          height: 68,
          decoration: BoxDecoration(
              color: primaryColor.withOpacity(0.8),
              borderRadius: BorderRadius.circular(16)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  size: 30,
                  color: pageIndex == 0 ? white : white.withOpacity(0.4),
                ),
                onPressed: () {
                  setPageIndex(0);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: pageIndex == 1 ? white : white.withOpacity(0.4),
                ),
                onPressed: () {
                  setPageIndex(1);
                },
              ),
              IconButton(
                enableFeedback: true,
                icon: Icon(
                  pageIndex == 2 ? Icons.favorite : Icons.favorite_outline,
                  size: 30,
                  color: pageIndex == 2 ? white : white.withOpacity(0.4),
                ),
                onPressed: () {
                  setPageIndex(2);
                },
              ),
              IconButton(
                enableFeedback: true,
                icon: Icon(
                  Icons.person,
                  size: 30,
                  color: pageIndex == 3 ? white : white.withOpacity(0.4),
                ),
                onPressed: () {
                  setPageIndex(3);
                },
              ),
            ],
          )),
    );
  }

  setPageIndex(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
