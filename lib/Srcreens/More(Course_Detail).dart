import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yacademy/SizeConfig.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(SizeConfig.actualHeight * 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.more_horiz,
                ),
                SizedBox(
                  width: SizeConfig.actualwidth * 16,
                ),
                Text(
                  'About this Course',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      fontSize: SizeConfig.actualHeight * 16),
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.actualHeight*24,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  CupertinoIcons.share,
                ),
                SizedBox(
                  width: SizeConfig.actualwidth*16,
                ),
                Text(
                  'Share this Course',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      fontSize: SizeConfig.actualHeight*16),
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.actualHeight*24,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: SizeConfig.actualwidth*16,
                ),
                Text(
                  'Q & A',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      fontSize: SizeConfig.actualHeight*16),
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.actualHeight*24,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.speaker_notes,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: SizeConfig.actualwidth*16,
                ),
                Text(
                  'Notes',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      fontSize: SizeConfig.actualHeight*16),
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.actualHeight*24,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.list,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: SizeConfig.actualwidth*16,
                ),
                Text(
                  'Resources',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      fontSize: SizeConfig.actualHeight*16),
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.actualHeight*24,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.notifications_none,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: SizeConfig.actualwidth*16,
                ),
                Text(
                  'Announcements',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      fontSize: SizeConfig.actualHeight*16),
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.actualHeight*24,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.archive,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: SizeConfig.actualwidth*16,
                ),
                Text(
                  'Archieve this Course',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      fontSize: SizeConfig.actualHeight*16),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
