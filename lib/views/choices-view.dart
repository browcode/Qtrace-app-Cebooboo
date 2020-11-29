import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:qtrace_app/views/citizenSignUp1-view.dart';
import 'package:qtrace_app/views/establishmentSignUp1-view.dart';
import 'package:qtrace_app/views/login-view.dart';
import 'package:qtrace_app/views/tracerSignUp1-view.dart';

class Choices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 34),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 56, width: 411),
            SizedBox(
              height: 356,
              width: 365,
              child:
                  Image.asset('assets/images/Choices.png', fit: BoxFit.contain),
            ),
            Stack(
              children: <Widget>[
                SizedBox(
                  width: 315,
                  height: 60,
                  child: Text(
                    'SeQR',
                    style: Theme.of(context).textTheme.headline1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: SizedBox(
                    width: 315,
                    height: 70,
                    child: Text(
                      'Regisration',
                      style: Theme.of(context).textTheme.headline1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 24,
              width: 266,
              child: Text(
                'Sign Up now and Secure your Data',
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 40,
              width: 208,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  color: Theme.of(context).primaryColorLight,
                  child: Container(
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
            SizedBox(height: 15),
            SizedBox(
              height: 40,
              width: 208,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side:
                        BorderSide(color: Theme.of(context).primaryColorLight),
                  ),
                  color: Colors.white,
                  child: Container(
                    child: Text(
                      'As an Establishment',
                      style: TextStyle(
                        color: Theme.of(context).primaryColorLight,
                        fontFamily: 'PoppinsRegular',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EstablishmentSignUp1()))
                      }),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 40,
              width: 208,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color: Colors.grey),
                  ),
                  color: Colors.white,
                  child: Container(
                    child: Text(
                      'As a Contact Tracer',
                      style: TextStyle(
                        color: Theme.of(context).primaryColorLight,
                        fontFamily: 'PoppinsRegular',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TracerSignUp1()))
                      }),
            ),
            SizedBox(height: 20),
            Container(
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Already Registered?',
                    style: Theme.of(context).textTheme.headline4,
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Sign In',
                          style: TextStyle(
                            color: Theme.of(context).primaryColorDark,
                            fontFamily: 'PoppinsRegular',
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            letterSpacing: 0.7,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LogInView()));
                            }),
                      TextSpan(
                        text: ' Instead',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
