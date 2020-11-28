import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:qtrace_app/views/choices-view.dart';
import 'package:qtrace_app/views/login-view.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 220),
              child: Image.asset('assets/images/SignUp.png',
                  scale: 0.97, fit: BoxFit.contain),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 310),
              child:
                  Text('QTrace!', style: Theme.of(context).textTheme.headline1),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 380),
              child: Text('A seQR way to deal with outbreaks',
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
                    padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 105),
                    child: Text('Sign Up',
                        style: Theme.of(context).textTheme.headline3),
                  ),
                  onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Choices()))
                      }),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(top: 630),
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Already Registered?',
                    style: Theme.of(context).textTheme.headline4,
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Sign In',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
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
