import 'package:flutter/material.dart';
import 'package:yacademy/HomeScreen.dart';
import 'package:yacademy/RegisrationScreen.dart';
import 'package:yacademy/colors.dart';
import 'package:yacademy/constants.dart';

class LoginScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: Material(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.network(
                  'https://i.imgur.com/elawyYgh.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*0.25,
                ),
                Spacer(flex: 3,),
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
                Spacer(flex: 1,),
                Wrap(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 36),
                      padding: EdgeInsets.only(left: 24,top: 16,bottom: 16),
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Spacer(flex: 1),
                Container(
                  margin: EdgeInsets.only(left: 24,right: 24),
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                      onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return HomeScreen();
                      }));
                      },
                      child: Text('Login',style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),),
                      textColor: Colors.white,
                      color: accentColor),
                ),
                SizedBox(height: 16),
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
                       /* final snackbar = SnackBar(content: Text('Login Successful'));
                        Scaffold.of(context).showSnackBar(snackbar);*/
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
                SizedBox(height: 16,)
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
