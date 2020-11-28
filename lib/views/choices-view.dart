import 'package:flutter/material.dart';
import 'package:qtrace_app/views/citizenSignUp1-view.dart';
import 'package:qtrace_app/views/establishmentSignUp1-view.dart';

class Choices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 230),
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/Rectangle.png',
              scale: 1.0,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 230),
            alignment: Alignment.center,
            child: Text('seQR', style: Theme.of(context).textTheme.headline1),
          ),
          Container(
            padding: EdgeInsets.only(top: 320),
            alignment: Alignment.center,
            child: Text('Registration',
                style: Theme.of(context).textTheme.headline1),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 165),
            alignment: Alignment.bottomCenter,
            child: Text('Sign Up now and Secure your Data',
                style: Theme.of(context).textTheme.headline2),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 530),
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Theme.of(context).primaryColor,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 63),
                  child: Text('As a Citizen',
                      style: Theme.of(context).textTheme.headline3),
                ),
                onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CitizenSignUp1()))
                    }),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(bottom: 40),
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: Theme.of(context).primaryColor),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 30),
                  child: Text('As an Establishment',
                      style: Theme.of(context).textTheme.bodyText1),
                ),
                onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EstbalishmentSignUp1()))
                    }),
          ),
        ],
      ),
    );
  }
}
