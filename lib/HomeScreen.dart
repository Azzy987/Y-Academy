import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yacademy/Srcreens/SavedPage.dart';
import 'package:yacademy/Srcreens/Settings.dart';
import 'package:yacademy/SizeConfig.dart';
import 'package:yacademy/colors.dart';
import 'package:yacademy/Srcreens/HomePage.dart';
import 'package:yacademy/Srcreens/Feed.dart';
import 'package:yacademy/CustomBottomNavigation.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected_page = 0;

  final _pageOptions = [
    HomePage(),
    Feed(),
    SavedPage(),
    Settings()
  ];
  void onTap(int idx) => setState(() => selected_page = idx);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: CustomBottomNavigation(onTap: onTap),
          body:_pageOptions[selected_page],
        ),
      ),
    );
  }
}

