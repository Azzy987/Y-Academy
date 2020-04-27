import 'package:flutter/material.dart';
import 'package:yacademy/RegisrationScreen.dart';
import 'package:yacademy/colors.dart';
import 'package:yacademy/constants.dart';

class LoginScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  'https://i.imgur.com/elawyYgh.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*0.25,
                ),
                Container(
                  margin: EdgeInsets.only(left: 24),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 40,
                        color: accentColor),
                  ),
                ),
                Wrap(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 36),
                      padding: EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text('E-mail address', style: kEmailTextStyle),
                          SizedBox(
                            height: 4,
                          ),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                               /* focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: accentColor,width: 2.0),
                                ),*/
                                  border: InputBorder.none,
                                  hintText: 'Enter e-mail address',
                                ),
                              style: kEmailTextFieldTextStyle),
                          SizedBox(height: 24,),
                          Text(
                            'Password',
                            style: kEmailTextStyle,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          TextField(
                            obscureText: true,
                            style: kEmailTextFieldTextStyle,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your password ',
                               ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 24,right: 24),
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                      onPressed: () {},
                      child: Text('Login',style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),),
                      textColor: Colors.white,
                      color: accentColor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't have an account,",
                      style: TextStyle(
                          color: primaryTextColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 4,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return RegistrationScreen();
                        }));
                      },
                      child: Text(
                        'Signup',
                        style: TextStyle(
                            color: accentColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                           ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*
Container(
alignment: Alignment.center,
width: double.infinity,
height: 60,
margin: EdgeInsets.only(left: 30, right: 30),
decoration: BoxDecoration(
color: accentColor,
borderRadius: BorderRadius.all(
Radius.circular(30),
),
),
child: Text(
'Login',
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.w700,
fontSize: 20,
fontFamily: 'Brandon',
),
),
),*/
