import 'package:flutter/material.dart';
import 'package:yacademy/LoginScreen.dart';

void main() => runApp(/*DevicePreview(
  builder: (context) => */MyApp(),
//),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: ThemeData(
       fontFamily: 'Brandon',
           backgroundColor: Colors.white,
     ),
     /* locale: DevicePreview.of(context).locale, // <--- Add the locale
      builder: DevicePreview.appBuilder, // <--- Add the builder
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),*/
      home: LoginScreen(),
    );
  }
}