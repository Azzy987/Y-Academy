import 'package:flutter/material.dart';
import 'package:yacademy/HomeScreen.dart';
import 'package:yacademy/Srcreens/LoginScreen.dart';
import 'package:yacademy/colors.dart';
import 'package:yacademy/constants.dart';
import 'package:yacademy/SizeConfig.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SingleChildScrollView(
       child: Container(
          color: Colors.white,
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
          child: SafeArea(
            child:Material(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.network(
                    'https://i.imgur.com/elawyYgh.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: SizeConfig.actualHeight * 250,
                  ),
                  Spacer(flex: 2,),
                  Container(
                    margin: EdgeInsets.only(left: SizeConfig.actualHeight*24),
                    child: Text(
                      'Signup',
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
                            Text('Name', style: kEmailTextStyle.copyWith(fontSize: LoginScreen.emailFontSize)),
                            SizedBox(
                              height: 4,
                            ),
                            TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter your name',
                                ),
                                style: kEmailTextFieldTextStyle.copyWith(fontSize: LoginScreen.emailTextFieldFontSize)),
                            Text('E-mail address', style: kEmailTextStyle.copyWith(fontSize: LoginScreen.emailFontSize)),
                            SizedBox(
                              height: 4,
                            ),
                            TextField(
                              keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter e-mail address',
                                ),
                                style: kEmailTextFieldTextStyle.copyWith(fontSize: LoginScreen.emailTextFieldFontSize)),
                            Text(
                              'Password',
                              style: kEmailTextStyle.copyWith(fontSize: LoginScreen.emailFontSize),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            TextField(
                              obscureText: true,
                              style: kEmailTextFieldTextStyle.copyWith(fontSize: LoginScreen.emailTextFieldFontSize),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your password',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(flex: 1,),
                  Container(
                    margin: EdgeInsets.only(left: SizeConfig.actualHeight*24,right: SizeConfig.actualHeight*24),
                    width: double.infinity,
                    height: SizeConfig.actualHeight*50,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return HomeScreen();
                          }));
                        },
                        child: Text('Register an Account',style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: LoginScreen.emailTextFieldFontSize,
                        ),),
                        textColor: Colors.white,
                        color: accentColor),
                  ),
                  SizedBox(height: SizeConfig.actualHeight*16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Already have an account,",
                        style: TextStyle(
                            color: primaryTextColor,
                            fontSize: LoginScreen.emailFontSize,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(width: 4,),
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                              color: accentColor,
                              fontSize: LoginScreen.emailFontSize,
                              fontWeight: FontWeight.w600,
                         ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.actualHeight*16,)

                ],
              ),
            ),
          ),
        ),
     ),
   );
  }
}