import 'package:flutter/material.dart';
import 'package:yacademy/Srcreens/Lectures.dart';
import 'package:yacademy/Srcreens/More(Course_Detail).dart';
import 'package:yacademy/SizeConfig.dart';
import 'package:yacademy/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseDetail extends StatefulWidget {
  CourseDetail({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CourseDetailState createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail>
    with TickerProviderStateMixin {
  bool check = true;
  String bookmarkString = 'Added to Saved';
  List<Tab> _tabs = [];
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabs = <Tab>[
      Tab(
        child: Text(
          'Lectures',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: SizeConfig.actualHeight * 18),
        ),
      ),
      Tab(
        child: Text(
          'More',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: SizeConfig.actualHeight * 18),
        ),
      ),
    ];
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mqd = MediaQuery.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(SizeConfig.actualHeight *420),
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Image.network(
                      'https://i.imgur.com/Rr9tGP0h.png',
                      fit: BoxFit.cover,
                      width: double.maxFinite,
                      height: SizeConfig.actualHeight *200,
                    ),
                    Builder(builder: (context) {
                      return Positioned(
                        right: SizeConfig.actualwidth*24,
                        bottom: -28,
                        child: FloatingActionButton(
                          backgroundColor: accentColor,
                          onPressed: () {
                            print('Bookmarked');
                            final snackbar = SnackBar(
                              content: Text(
                                bookmarkString,
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: accentColor,
                            );

                            setState(() {
                              Scaffold.of(context).showSnackBar(snackbar);
                              if (check) {
                                bookmarkString = 'Removed';
                                check = false;
                              } else {
                                check = true;
                                bookmarkString = 'Added to Saved';
                              }
                            });
                          },
                          child: check
                              ? Icon(Icons.bookmark_border)
                              : Icon(Icons.bookmark),
                        ),
                      );
                    })
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: SizeConfig.actualwidth * 12),
                  child: Text(
                    'Machine Learning',
                    style: TextStyle(
                        fontSize: SizeConfig.actualHeight * 24,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: SizeConfig.actualwidth * 12),
                  child: Text(
                    'by Fred boyd',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.actualHeight * 18),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.symmetric(
                        vertical: SizeConfig.actualHeight * 10,
                        horizontal: SizeConfig.actualwidth * 40),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.actualHeight * 18,
                          color: Colors.white),
                    ),
                    color: accentColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: SizeConfig.actualwidth * 12, right: SizeConfig.actualwidth * 24),
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: mqd.size.width * 0.50,
                        child: TabBar(
                          indicatorColor: accentColor,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          indicatorWeight: 3,
                          tabs: _tabs,
                          controller: _tabController,
                        ),
                      ),
                      Expanded(
                        child: Container(
                            alignment: Alignment.centerRight,
                            child: SvgPicture.asset(
                              'assets/icons/download_fill.svg',
                              width: 24,
                              height: 24,
                              color: Colors.grey,
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        children: <Widget>[Lectures(), More()],
        controller: _tabController,
      ),
    );
  }
}
