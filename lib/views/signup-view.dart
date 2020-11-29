import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:qtrace_app/views/choices-view.dart';
import 'package:qtrace_app/views/login-view.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 45),
            SizedBox(
              height: 470.54,
              width: 368,
              child:
                  Image.asset('assets/images/SignUp.png', fit: BoxFit.contain),
            ),
            SizedBox(
              height: 116.85,
              width: 267,
              child: Image.asset('assets/images/Logo.png', fit: BoxFit.contain),
            ),
            SizedBox(height: 21),
            SizedBox(
              height: 40,
              width: 272,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Theme.of(context).primaryColor,
                  child: Container(
                    child: Text('Sign Up',
                        style: Theme.of(context).textTheme.headline3),
                  ),
                  onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Choices()))
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
