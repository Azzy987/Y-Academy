import 'package:flutter/material.dart';
import 'package:yacademy/HomeScreen.dart';
import 'package:yacademy/colors.dart';
import 'package:yacademy/constants.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Container(
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
                height: MediaQuery.of(context).size.height*0.25,
              ),
              Spacer(flex: 2,),
              Container(
                margin: EdgeInsets.only(left: 24),
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
                    margin: EdgeInsets.only(right: 36),
                    padding: EdgeInsets.only(left: 24,top: 16,bottom: 8),
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
                        Text('Name', style: kEmailTextStyle),
                        SizedBox(
                          height: 4,
                        ),
                        TextField(
                            decoration: InputDecoration(
                              /* focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: accentColor,width: 2.0),
                              ),*/
                              border: InputBorder.none,
                              hintText: 'Enter your name',
                            ),
                            style: kEmailTextFieldTextStyle),
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
              Spacer(flex: 1,),
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
                    child: Text('Register an Account',style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),),
                    textColor: Colors.white,
                    color: accentColor),
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an account,",
                    style: TextStyle(
                        color: primaryTextColor,
                        fontSize: 14,
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
    );
  }
}