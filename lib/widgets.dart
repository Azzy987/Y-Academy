import 'package:flutter/material.dart';
import 'package:yacademy/SizeConfig.dart';


class Login_Signup_Image extends StatelessWidget {
  const Login_Signup_Image({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://i.imgur.com/elawyYgh.jpg',
      fit: BoxFit.cover,
      width: double.infinity,
      height: SizeConfig.actualHeight * 250,
    );
  }
}
