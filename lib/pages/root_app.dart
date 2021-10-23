import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/pages/home_page.dart';
import 'package:real_estate/theme/colors.dart';

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
    return HomePage();
  }

  Widget getBottomNavBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Container(
          height: 68,
          decoration: BoxDecoration(
              color: primaryColor, borderRadius: BorderRadius.circular(16)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.home,
                  size: 30,
                  color: white,
                ),
                onPressed: () {
                  setPageIndex(0);
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: white,
                ),
                onPressed: () {
                  setPageIndex(1);
                },
              ),
              IconButton(
                enableFeedback: true,
                icon: const Icon(
                  Icons.favorite,
                  size: 30,
                  color: white,
                ),
                onPressed: () {
                  setPageIndex(2);
                },
              ),
              IconButton(
                enableFeedback: true,
                icon: const Icon(
                  Icons.person,
                  size: 30,
                  color: white,
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
