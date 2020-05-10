import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yacademy/SizeConfig.dart';

class Lectures extends StatefulWidget {
  @override
  _LecturesState createState() => _LecturesState();
}

class _LecturesState extends State<Lectures> {
  List<LectureItem> lectures = lectureData
      .map((item) => LectureItem(
          index: item['index'],
          lectureName: item['lectureName'],
          lectureCategory: item['lectureCategory'],
          icon: item['icon']))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.actualwidth * 16,
                  right: SizeConfig.actualwidth * 24,
                  top: SizeConfig.actualHeight * 16,
                  bottom: SizeConfig.actualHeight * 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Section 1 -Introduction',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.actualHeight * 18),
                  ),
                  SvgPicture.asset(
                    'assets/icons/download.svg',
                    width: 24,
                    height: 24,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.actualwidth * 16,
                        right: SizeConfig.actualwidth * 24,
                        top: SizeConfig.actualHeight * 12,
                        bottom: SizeConfig.actualHeight * 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          lectures[i].index.toString(),
                          style: TextStyle(
                              fontSize: SizeConfig.actualHeight * 18,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: SizeConfig.actualwidth * 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              lectures[i].lectureName,
                              style: TextStyle(
                                  fontWeight: FontWeight.w100, fontSize: SizeConfig.actualHeight*14),
                            ),
                            Text(
                              lectures[i].lectureCategory,
                              style: TextStyle(
                                  fontSize: SizeConfig.actualHeight*11, fontWeight: FontWeight.w100),
                            ),
                          ],
                        ),
                        Spacer(),
                        SvgPicture.asset(
                          lectures[i].icon,
                          width: 24,
                          height: 24,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  );
                },
                itemCount: lectureData.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

var lectureData = [
  {
    "index": 1,
    "lectureName": "Applications of Machine Learning",
    "lectureCategory": "Video - 06:37 mins",
    "icon": "assets/icons/download.svg"
  },
  {
    "index": 2,
    "lectureName": "Why machine learning is the future",
    "lectureCategory": "Video - 00:45 mins",
    "icon": "assets/icons/download.svg"
  },
  {
    "index": 3,
    "lectureName": "Important notes, tips & tricks",
    "lectureCategory": "Article - 02:01 mins",
    "icon": "assets/icons/download.svg"
  },
  {
    "index": 4,
    "lectureName": "Resources PDF",
    "lectureCategory": "Article - 01:04 mins",
    "icon": "assets/icons/download.svg"
  },
  {
    "index": 5,
    "lectureName": "Presentation of the ML A-Z folder, Colaborat…",
    "lectureCategory": "Video - 16:48 mins",
    "icon": "assets/icons/download.svg"
  },
  {
    "index": 6,
    "lectureName": "Installing R and R studio (Mac, Linux and Win…",
    "lectureCategory": "Video - 05:40 mins",
    "icon": "assets/icons/download.svg"
  },
  {
    "index": 7,
    "lectureName": "Some Additional Resources",
    "lectureCategory": "Article - 00:10 mins",
    "icon": "assets/icons/download.svg"
  },
  {
    "index": 8,
    "lectureName": "Some Additional Resources",
    "lectureCategory": "Article - 00:10 mins",
    "icon": "assets/icons/download.svg"
  },
  {
    "index": 9,
    "lectureName": "Some Additional Resources",
    "lectureCategory": "Article - 00:10 mins",
    "icon": "assets/icons/download.svg"
  },
  {
    "index": 10,
    "lectureName": "Some Additional Resources",
    "lectureCategory": "Article - 00:10 mins",
    "icon": "assets/icons/download.svg"
  },
];

class LectureItem {
  final int index;
  final String lectureName;
  final String lectureCategory;
  final String icon;

  LectureItem({this.index, this.lectureName, this.lectureCategory, this.icon});
}
