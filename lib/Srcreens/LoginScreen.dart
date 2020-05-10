import 'package:flutter/material.dart';
import 'package:yacademy/HomeScreen.dart';
import 'package:yacademy/Srcreens/RegisrationScreen.dart';
import 'package:yacademy/SizeConfig.dart';
import 'package:yacademy/colors.dart';
import 'package:yacademy/constants.dart';
import 'package:yacademy/widgets.dart';



class LoginScreen extends StatefulWidget {

  static double emailFontSize = SizeConfig.actualHeight * 14;
  static double emailTextFieldFontSize = SizeConfig.actualHeight * 20;

  @override
  _LoginScreenState createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    double fontSize = SizeConfig.actualHeight * 40;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SafeArea(
            child: Material(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Login_Signup_Image(),
                  Spacer(
                    flex: 3,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: SizeConfig.actualHeight * 24),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: fontSize,
                          color: accentColor),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Wrap(
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.only(right: SizeConfig.actualHeight * 36),
                        padding: EdgeInsets.only(
                            left: SizeConfig.actualHeight * 24,
                            top: SizeConfig.actualHeight * 16,
                            bottom: SizeConfig.actualHeight * 16),
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(SizeConfig.actualHeight*30),
                            bottomRight: Radius.circular(SizeConfig.actualHeight*30),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('E-mail address', style: kEmailTextStyle.copyWith(fontSize: LoginScreen.emailFontSize)),
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
                                onChanged: (value) {
                                  email = value;
                                  print('Font size : $fontSize');
                                  print(SizeConfig.blockHeight);
                                },
                                style: kEmailTextFieldTextStyle.copyWith(
                                    fontSize: LoginScreen.emailTextFieldFontSize)),
                            Text(
                              'Password',
                              style: kEmailTextStyle.copyWith(fontSize: LoginScreen.emailFontSize),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            TextField(
                              obscureText: true,
                              style: kEmailTextFieldTextStyle.copyWith(
                                  fontSize: LoginScreen.emailTextFieldFontSize),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your password ',
                              ),
                              onChanged: (value) {
                                password = value;
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(flex: 1),
                  Container(
                    margin: EdgeInsets.only(left: SizeConfig.actualHeight*24, right: SizeConfig.actualHeight*24),
                    width: double.infinity,
                    height: SizeConfig.actualHeight*50,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(SizeConfig.actualHeight*30)),
                        onPressed: () {
                          if (email == 'yashrthr123@gmail.com' &&
                              password == 'yash123') {
                            return Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HomeScreen();
                            }));
                          }
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: LoginScreen.emailTextFieldFontSize,
                          ),
                        ),
                        textColor: Colors.white,
                        color: accentColor),
                  ),
                  SizedBox(height: SizeConfig.actualHeight*16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't have an account,",
                        style: TextStyle(
                            color: primaryTextColor,
                            fontSize: LoginScreen.emailFontSize,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return RegistrationScreen();
                          }));
                          /* final snackbar = SnackBar(content: Text('Login Successful'));
                          Scaffold.of(context).showSnackBar(snackbar);*/
                        },
                        child: Text(
                          'Signup',
                          style: TextStyle(
                            color: accentColor,
                            fontSize: LoginScreen.emailFontSize,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.actualHeight*16,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

