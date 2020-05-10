import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yacademy/Srcreens/CourseDetail.dart';
import 'package:yacademy/SizeConfig.dart';
import 'package:yacademy/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

GlobalKey _globalKey = GlobalKey();

class _HomePageState extends State<HomePage> {
  MainAxisAlignment courseContentAlignment = MainAxisAlignment.spaceBetween;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(color: cardColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SvgPicture.asset(
                    'assets/icons/man.svg',
                    width: SizeConfig.actualwidth * 50,
                    height: SizeConfig.actualHeight * 50,
                  ),
                  Text(
                    'Yash Rathore',
                    style: TextStyle(
                        fontSize: SizeConfig.actualHeight * 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'yashrthr123@gmail.com',
                    style: TextStyle(fontSize: SizeConfig.actualHeight * 16),
                  ),
                  /* Text(
                    'Become an Instructor',
                    style: TextStyle(
                        color: accentColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )*/
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.actualHeight * 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Video preferences',
                    style: TextStyle(fontSize: SizeConfig.actualHeight * 12, color: secondaryTextColor),
                  ),
                  SizedBox(
                    height: SizeConfig.actualHeight *16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Download options',
                        style: TextStyle(
                            fontSize: SizeConfig.actualHeight*16, fontWeight: FontWeight.w200),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: SizeConfig.actualHeight*16,
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.actualHeight*16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Video playback options',
                        style: TextStyle(
                            fontSize: SizeConfig.actualHeight*16, fontWeight: FontWeight.w200),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: SizeConfig.actualHeight*16,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Material(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.actualwidth * 24,
                  top: SizeConfig.actualHeight * 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Courses',
                    style: TextStyle(
                        fontSize: SizeConfig.actualHeight * 40,
                        fontWeight: FontWeight.w800,
                        color: accentColor),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(
                            left: 4, right: 8, top: 4, bottom: 4),
                        child: Builder(builder: (context) {
                          return GestureDetector(
                            onTap: () {
                              Scaffold.of(context).openEndDrawer();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                SvgPicture.asset(
                                  'assets/icons/man.svg',
                                  width: SizeConfig.actualwidth * 40,
                                  height: SizeConfig.actualHeight * 40,
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                SvgPicture.asset(
                                  'assets/icons/menu_new.svg',
                                  height: SizeConfig.actualHeight * 24,
                                  width: SizeConfig.actualwidth * 24,
                                  color: accentColor,
                                  fit: BoxFit.cover,
                                )
                              ],
                            ),
                          );
                        })),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.actualwidth * 24),
              child: Text(
                'In Progress',
                style: TextStyle(
                    fontSize: SizeConfig.actualHeight * 24,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        width: SizeConfig.actualwidth * 260,
                        padding: EdgeInsets.all(SizeConfig.actualHeight * 16),
                        margin: EdgeInsets.only(
                            top: SizeConfig.actualHeight * 16,
                            left: SizeConfig.actualwidth * 24),
                        decoration: BoxDecoration(
                          color: accentColor,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Column(
                          mainAxisAlignment: courseContentAlignment,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              child: Image.network(
                                'https://i.imgur.com/YZOfDv2.png',
                                fit: BoxFit.cover,
                                height: SizeConfig.actualHeight * 180,
                                width: double.maxFinite,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            SizedBox(height: SizeConfig.actualHeight * 8),
                            Text(
                              'Machine Learning',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: SizeConfig.actualHeight * 20),
                            ),
                            Text(
                              'by Fred boyd',
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: SizeConfig.actualHeight * 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: SizeConfig.actualHeight * 16),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.actualwidth * 16,
                                  vertical: SizeConfig.actualHeight * 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  color: secondarycardColor),
                              child: Text(
                                '12 lessons',
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w600,
                                    fontSize: SizeConfig.actualHeight * 12),
                              ),
                            ),
                            SizedBox(height: SizeConfig.actualHeight * 16),
                            Container(
                              width: double.infinity,
                              height: SizeConfig.actualHeight * 6,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  color: secondarycardColor),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                    color: progressBarColor),
                              ),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CourseDetail();
                        }));
                      },
                    ),
                    InkWell(
                      child: Container(
                        width: SizeConfig.actualHeight * 260,
                        padding: EdgeInsets.all(SizeConfig.actualHeight * 16),
                        margin: EdgeInsets.only(
                            top: SizeConfig.actualHeight * 16,
                            left: SizeConfig.actualwidth * 24),
                        decoration: BoxDecoration(
                          color: anothercardColor,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: courseContentAlignment,
                          children: <Widget>[
                            ClipRRect(
                              child: Image.network(
                                'https://i.imgur.com/GlvihMd.png',
                                fit: BoxFit.cover,
                                height: SizeConfig.actualHeight * 180,
                                width: double.maxFinite,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            SizedBox(height: SizeConfig.actualHeight * 8),
                            Text(
                              'Python',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: SizeConfig.actualHeight * 20),
                            ),
                            Text(
                              'by Julia Scott',
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: SizeConfig.actualHeight * 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: SizeConfig.actualHeight * 16),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.actualwidth * 16,
                                  vertical: SizeConfig.actualHeight * 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  color: anothercardsecondaryColor),
                              child: Text(
                                '14 lessons',
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w600,
                                    fontSize: SizeConfig.actualHeight * 12),
                              ),
                            ),
                            SizedBox(height: SizeConfig.actualHeight * 16),
                            Container(
                              width: double.infinity,
                              height: SizeConfig.actualHeight * 6,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  color: secondarycardColor),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                    color: secondaryprogressBarColor),
                              ),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CourseDetail();
                        }));
                      },
                    ),
                  ],
                )),
            SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  height: SizeConfig.actualHeight * 400,
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.only(
                      left: SizeConfig.actualHeight * 10,
                      right: SizeConfig.actualwidth * 10,
                      top: SizeConfig.actualHeight * 16),
                  decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.all(Radius.circular(24))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Recommeded',
                        style: TextStyle(
                            fontSize: SizeConfig.actualHeight * 24,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: SizeConfig.actualHeight * 6,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              width: SizeConfig.actualHeight * 150,
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: <Widget>[
                                  FittedBox(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "Business\nManagement",
                                          style: TextStyle(
                                              fontSize:
                                                  SizeConfig.actualHeight * 16),
                                          overflow: TextOverflow.visible,
                                        ),
                                        IconButton(
                                            icon: Icon(Icons.more_vert),
                                            onPressed: () {})
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.actualHeight * 8,
                                  ),
                                  Text(
                                    'by Jose Green',
                                    style: TextStyle(
                                        fontSize: SizeConfig.actualHeight * 12,
                                        color: secondaryTextColor),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.actualHeight * 16,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: accentColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: Text(
                                      '12 lessons',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              SizeConfig.actualHeight * 12),
                                    ),
                                    margin: EdgeInsets.only(
                                        bottom: SizeConfig.actualHeight * 4),
                                    padding: EdgeInsets.only(
                                        left: SizeConfig.actualwidth * 8,
                                        top: SizeConfig.actualHeight * 4,
                                        bottom: SizeConfig.actualHeight * 4),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.actualwidth * 16,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              width: SizeConfig.actualwidth * 150,
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  FittedBox(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "Fundamental\nof Java",
                                          overflow: TextOverflow.visible,
                                          style: TextStyle(
                                              fontSize:
                                                  SizeConfig.actualHeight * 16),
                                        ),
                                        IconButton(
                                            icon: Icon(Icons.more_vert),
                                            onPressed: () {})
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.actualHeight * 8,
                                  ),
                                  Text(
                                    'by Asutin',
                                    style: TextStyle(
                                        fontSize: SizeConfig.actualHeight * 12,
                                        color: secondaryTextColor),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.actualHeight * 16,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: anothercardColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: Text(
                                      '15 lessons',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              SizeConfig.actualHeight * 12),
                                    ),
                                    margin: EdgeInsets.only(
                                        bottom: SizeConfig.actualHeight * 4),
                                    padding: EdgeInsets.only(
                                        left: SizeConfig.actualwidth * 8,
                                        top: SizeConfig.actualHeight * 4,
                                        bottom: SizeConfig.actualHeight * 4),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
