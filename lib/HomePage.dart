import 'package:flutter/material.dart';
import 'package:yacademy/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
GlobalKey _globalKey = GlobalKey();

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    
    // With this 2 variables you can set the course layout.
    // You can always insert a SidedBox between lesson's and
    // author's name but this feels better to me.
    MainAxisAlignment courseContentAlignment = MainAxisAlignment.spaceBetween;
    double courseContentHeight = 350;

    return  Scaffold(
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
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            ClipOval(
                              child: Image.asset('images/profile.png',width: 40,height: 40,),
                            ),
                            Builder(
                              builder: (context) {
                                return IconButton(
                                  icon: Icon(
                                    Icons.menu,
                                    color: accentColor,
                                  ),
                                  onPressed: () {
                                    Scaffold.of(context).openEndDrawer();
                                  },
                                );
                              }
                            ),
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
                child: SizedBox(
                    height: courseContentHeight,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 260,
                          padding: EdgeInsets.all(16),
                          margin: EdgeInsets.only(top: 16, left: 24),
                          decoration: BoxDecoration(
                            color: accentColor,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: courseContentAlignment,
                            children: <Widget>[
                              ClipRRect(
                                child: Image.network(
                                  'https://i.imgur.com/YZOfDv2.png',
                                  fit: BoxFit.cover,
                                  height: 180,
                                  width: double.maxFinite,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                              ),
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
                                borderRadius: BorderRadius.all(
                                    Radius.circular(12)),
                              ),

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

                              Container(
                                width: double.infinity,
                                padding:
                                EdgeInsets.symmetric(
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
                    ),
                  ),
              
              ),
              // Expanded and scroll views are not a good mix. Removed.
              // This height is just for sample purposes. It can be modified.
              Container(height: 150),
            ],
          ),
        ),
      ),
    );
  }
}
