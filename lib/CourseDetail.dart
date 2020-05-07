import 'package:flutter/material.dart';
import 'package:yacademy/Lectures.dart';
import 'package:yacademy/More(Course_Detail).dart';
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
          style: TextStyle(fontSize: 18),
        ),
      ),
      Tab(
        child: Text(
          'More',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 18),
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
        preferredSize: Size.fromHeight(mqd.size.height * 0.4),
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
                      height: mqd.size.height * 0.2,
                    ),
                    Builder(
                      builder: (context){
                        return Positioned(
                          right: 24,
                          bottom: -28,
                          child: FloatingActionButton(
                            backgroundColor: accentColor,
                            onPressed: () {
                              print('Bookmarked');
                              final snackbar = SnackBar(
                                content: Text(
                                  'Bookmarked',
                                  style: TextStyle(color: Colors.white),
                                ),
                                backgroundColor: accentColor,
                              );

                              setState(() {
                                Scaffold.of(context).showSnackBar(snackbar);
                                if (check) {
                                  check = false;
                                } else {
                                  check = true;
                                }
                              });
                            },
                            child: check
                                ? Icon(Icons.bookmark_border)
                                : Icon(Icons.bookmark),
                          ),
                        );
                      }

                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    'Machine Learning',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    'by Fred boyd',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    color: accentColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 12, right: 24),
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: mqd.size.width * 0.60,
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
