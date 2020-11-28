import 'dart:async';
import 'package:flutter/material.dart';
import 'package:qtrace_app/views/signup-view.dart';

class WelcomeView extends StatefulWidget {
  @override
  _WelcomeViewState createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUp())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 70),
            child: Center(
              child: Image.asset('assets/images/Welcome2.png',
                  width: 530, height: 530, fit: BoxFit.contain),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 340),
            child: Center(
              child:
                  Text('QTrace!', style: Theme.of(context).textTheme.headline1),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 405),
            child: Center(
              child: Text('A smarter way to deal with outbreaks',
                  style: Theme.of(context).textTheme.headline2),
            ),
          ),
        ],
      ),
    );
  }
}
