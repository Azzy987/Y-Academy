import 'package:flutter/material.dart';
import 'package:yacademy/SizeConfig.dart';
import 'package:yacademy/colors.dart';


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
        height: SizeConfig.actualHeight * 50,
        width: isSelected ? SizeConfig.actualwidth * 120 : SizeConfig.actualwidth * 50,
        padding: EdgeInsets.only(left: SizeConfig.actualwidth*16),
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
                    padding: EdgeInsets.only(left: SizeConfig.actualwidth*8),
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
      height: SizeConfig.actualHeight * 60,
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
