import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yacademy/SavedPage.dart';
import 'package:yacademy/Settings.dart';
import 'package:yacademy/colors.dart';
import 'package:yacademy/HomePage.dart';
import 'package:yacademy/Feed.dart';

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
          body: _pageOptions[selected_page],
        ),
      ),
    );
  }
}

class CustomBottomNavigation extends StatefulWidget {

  CustomBottomNavigation({this.onTap});

  final ValueSetter<int> onTap;


  @override
  _CustomBottomNavigationState createState() => _CustomBottomNavigationState();
}
    int selectedIndex = 0;


class _CustomBottomNavigationState extends State<CustomBottomNavigation> {

  int index = 0;

  List<NavigationItem> items = [
    NavigationItem(Icon(Icons.dashboard), Text('Home')),
    NavigationItem(Icon(Icons.trending_up), Text('Feed')),
    NavigationItem(Icon(Icons.bookmark_border), Text('Saved')),
    NavigationItem(Icon(Icons.settings), Text('Settings')),
  ];

  Widget _buildItem(NavigationItem item, bool isSelected) {
    return AnimatedContainer(
        height: 50,
        width: isSelected ?120 : 50,
        padding: EdgeInsets.only(left: 16),
        duration: Duration(milliseconds: 250),
        decoration: isSelected ? BoxDecoration(
            color: accentColor,
            borderRadius: BorderRadius.all(Radius.circular(30))
        ) : null,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Row(
              children: <Widget>[
                IconTheme(data: IconThemeData(
                    color: isSelected ? Colors.white:Colors.grey,
                    size: 24
                ), child: item.icon),
                Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: DefaultTextStyle.merge(style: TextStyle(
                        color: Colors.white
                    ),child: isSelected ? item.title : Container(),)
                )
              ],
            ),
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,

      ),
      padding: EdgeInsets.only(left: 8,right: 8,top: 4,bottom: 4),
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: items.map((item) {
          var itemIndex = items.indexOf(item);
          return GestureDetector(
            onTap: () {
              /*switch(itemIndex){
                case 0 : return Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return HomePAge();
                }));
                case 1 : return Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Feed();
                }));

              }*/
              widget.onTap(itemIndex);
              setState(() {
                index = itemIndex;
              });
            },
            child: _buildItem(item, index == itemIndex),
          );
        }).toList(),
      ),
    );
  }
}

class NavigationItem {
  final Icon icon;
  final Text title;

  NavigationItem(this.icon, this.title);
}
