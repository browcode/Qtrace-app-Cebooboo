/// Flutter code sample for Scaffold

// This example shows a [Scaffold] with a [body] and [FloatingActionButton].
// The [body] is a [Text] placed in a [Center] in order to center the text
// within the [Scaffold]. The [FloatingActionButton] is connected to a
// callback that increments a counter.
//
// ![The Scaffold has a white background with a blue AppBar at the top. A blue FloatingActionButton is positioned at the bottom right corner of the Scaffold.](https://flutter.github.io/assets-for-api-docs/assets/material/scaffold.png)

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:qtrace_app/views/welcome-view.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Qtrace';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _title,
        theme: ThemeData(
          primaryColor: HexColor('#EB0055'),
          primaryColorDark: HexColor('#0096B7'),
          primaryColorLight: HexColor('#5F2EEA'),
          secondaryHeaderColor: HexColor('#0096B7'),
          textTheme: TextTheme(
            headline1: TextStyle(
              color: Colors.black,
              fontFamily: 'PoppinsBold',
              fontSize: 48,
              wordSpacing: 0.4,
              letterSpacing: 1.0,
            ),
            headline2: TextStyle(
              color: Colors.black,
              fontFamily: 'PoppinsRegular',
              fontSize: 15,
              wordSpacing: 4,
            ),
            headline3: TextStyle(
              color: Colors.white,
              fontFamily: 'PoppinsRegular',
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
            headline4: TextStyle(
              color: Colors.black,
              fontFamily: 'PoppinsRegular',
              fontWeight: FontWeight.w500,
              fontSize: 13,
              letterSpacing: 0.7,
            ),
            bodyText1: TextStyle(
              color: HexColor('#5F2EEA'),
              fontFamily: 'PoppinsRegular',
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
            bodyText2: TextStyle(
              color: Colors.black,
              fontFamily: 'PoppinsRegular',
              fontWeight: FontWeight.w900,
              fontSize: 24,
              letterSpacing: 1,
            ),
            headline5: TextStyle(
              color: Colors.black,
              fontFamily: 'PoppinsRegular',
              fontWeight: FontWeight.w500,
              fontSize: 14,
              letterSpacing: 1,
            ),
            headline6: TextStyle(
              color: HexColor('#6E7191'),
              fontFamily: 'PoppinsRegular',
              fontWeight: FontWeight.w300,
              fontSize: 14,
              letterSpacing: 0.25,
            ),
          ),
        ),
        home: WelcomeView());
  }
}
