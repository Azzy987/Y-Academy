import 'package:flutter/material.dart';
import 'package:yacademy/Srcreens/LoginScreen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:yacademy/SizeConfig.dart';

void main() => runApp(/*DevicePreview(
  builder: (context) =>*/ MyApp(),
//),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      return OrientationBuilder(builder: (contex,orientation){
        SizeConfig().init(constraints, orientation);
       return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Brandon',
            primaryColor: Colors.white,
            backgroundColor: Colors.white,
          ),
          /* locale: DevicePreview.of(context).locale, // <--- Add the locale
      builder: DevicePreview.appBuilder, */// <--- Add the builder
          home: LoginScreen(),
        );
      });
    });
  }
}