import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yacademy/CourseDetail.dart';
import 'package:yacademy/Feedback.dart';
import 'package:yacademy/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

GlobalKey _globalKey = GlobalKey();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    MainAxisAlignment courseContentAlignment = MainAxisAlignment.spaceBetween;
    double courseContentHeight = 350;
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      key: _globalKey,
      body: SafeArea(
        child: Material(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 24, top: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Courses',
                      style: TextStyle(
                          fontSize: 40,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SvgPicture.asset('assets/icons/man.svg',width: 40,height: 40,),
                            SizedBox(
                              width: 16,
                            ),
                            Builder(builder: (context) {
                              return InkWell(
                                onTap: () {
                                  Scaffold.of(context).openEndDrawer();
                                },
                                child: SvgPicture.asset(
                                  'assets/icons/menu_new.svg',
                                  height: 24,
                                  width: 24,
                                  color: accentColor,
                                  fit: BoxFit.cover,
                                ),
                              );
                            })
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  'In Progress',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        child: Container(
                          width: 260,
                          padding: EdgeInsets.all(16),
                          margin: EdgeInsets.only(top: 16, left: 24),
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
                                  height: 180,
                                  width: double.maxFinite,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Machine Learning',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                              Text(
                                'by Fred boyd',
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 16),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
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
                                      fontSize: 12),
                                ),
                              ),
                              SizedBox(height: 16),
                              Container(
                                width: double.infinity,
                                height: 6,
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
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context){
                            return CourseDetail();
                          }));
                        },
                      ),
                      Container(
                        width: 260,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.only(top: 16, left: 24),
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
                                height: 180,
                                width: double.maxFinite,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Python',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                            ),
                            Text(
                              'by Julia Scott',
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 16),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
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
                                    fontSize: 12),
                              ),
                            ),
                            SizedBox(height: 16),
                            Container(
                              width: double.infinity,
                              height: 6,
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
                    ],
                  )),
              SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    height: 400,
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.only(left: 10, right: 10, top: 16),
                    decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius:
                            BorderRadius.all(Radius.circular(24))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Recommeded',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 6,
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
                                width: 148,
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text(
                                          "Business\nManagement",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        IconButton(
                                            icon: Icon(Icons.more_vert),
                                            onPressed: () {})
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'by Jose Green',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: secondaryTextColor),
                                    ),
                                    SizedBox(
                                      height: 16,
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
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      margin: EdgeInsets.only(bottom: 4),
                                      padding: EdgeInsets.only(
                                          left: 8, top: 4, bottom: 4),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 16,),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                                ),
                                width: 148,
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text(
                                          "Fundamental\nof Java",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        IconButton(
                                            icon: Icon(Icons.more_vert),
                                            onPressed: () {})
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'by Asutin',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: secondaryTextColor),
                                    ),
                                    SizedBox(
                                      height: 16,
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
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      margin: EdgeInsets.only(bottom: 4),
                                      padding: EdgeInsets.only(
                                          left: 8, top: 4, bottom: 4),
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
      ),
    );
  }
}
