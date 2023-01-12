import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_three_new/first_sample.dart';
import 'package:flutter_three_new/second_sample.dart';

import '../main.dart';
//import 'third_sample.dart';

class MainAppBarSliverAppBar extends StatelessWidget {
  const MainAppBarSliverAppBar({super.key});

  onButtonTap(Widget page, BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.redAccent, // not same color
          statusBarIconBrightness: Brightness.dark, // for Android
          statusBarBrightness: Brightness.light, // for iOS
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            MyMenuButton(
              title: "Sample First - AppBar",
              actionTap: () {
                onButtonTap(const FirstSample(), context);
              },
            ),
            /* MyMenuButton(
              title: "Sample Second - SliverAppBar",
              actionTap: () {
                onButtonTap(const SecondSample(), context);
              },
            ), */
            /* MyMenuButton(
              title: "Sample 3 - SliverAppBar with Strech",
              actionTap: () {
                onButtonTap(const ThirdSample(), context);
              },
            ), */
          ],
        ),
      ),
    );
  }
}
