import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yacademy/colors.dart';

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  @override
  Widget build(BuildContext context) {
    List<String> feedback = ['Horrible', 'Bad', 'Average', 'Good', 'Excellent'];
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 10,
                child: Image.network(
                  'https://i.imgur.com/PFh2zH6.png',
                  height: MediaQuery.of(context).size.height / 2,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              Expanded(
                flex: 1,
                child: Text(
                  'FEEDBACK',
                  style: TextStyle(
                      fontSize: 26, color: accentColor, fontWeight: FontWeight.w700),
                ),
              ),
              Expanded(
                flex: 2,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SvgPicture.asset(
                          'assets/icons/star.svg',
                          height: 32,
                          width: 32,
                        ),
                        Text(feedback[index])
                      ],
                    );
                  },
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemExtent: MediaQuery.of(context).size.width/6,
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  height: 150,
                  margin: EdgeInsets.all(32),
                  padding: EdgeInsets.only(
                    left: 8,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.fromBorderSide(
                          BorderSide(width: 1, color: Colors.black87))),
                  child: TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                        hintText: 'Tell us Something more (Optional)',
                        border: InputBorder.none),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Submit Feedback',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  color: accentColor,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Rate us on Play Store',
                    style: TextStyle(
                        color: accentColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
