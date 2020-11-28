import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:qtrace_app/views/QR.dart';
import 'package:qtrace_app/views/welcome-view.dart';

class CitizenSignUp4 extends StatefulWidget {
  @override
  _CitizenSignUp4State createState() => _CitizenSignUp4State();
}

class _CitizenSignUp4State extends State<CitizenSignUp4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 56),
                child: SizedBox(
                  width: 348,
                  height: 163,
                  child: Image.asset('assets/images/CitizenSignUp4.png',
                      fit: BoxFit.contain),
                ),
              ),
              SizedBox(height: 38),
              SizedBox(
                  height: 32,
                  child: Text('Citizen Sign Up',
                      style: Theme.of(context).textTheme.bodyText2)),
              SizedBox(
                height: 68,
                child: RichText(
                  text: TextSpan(
                    text:
                        'You\'re almost there,\nAccess your data and more with a',
                    style: Theme.of(context).textTheme.headline5,
                    children: <TextSpan>[
                      TextSpan(
                        text: '\nQTrace!',
                        style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            letterSpacing: 1),
                      ),
                      TextSpan(
                        text: ' Account',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 18,
                child: Text('Account',
                    style: Theme.of(context).textTheme.headline6),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 64,
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_rounded),
                      labelText: 'Username',
                      fillColor: HexColor('#EFF0F6'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 64,
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline_rounded),
                      labelText: 'Password',
                      fillColor: HexColor('#EFF0F6'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 64,
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline_rounded),
                      labelText: 'Repeat Password',
                      fillColor: HexColor('#EFF0F6'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(width: 21),
                  SizedBox(
                    width: 140,
                    height: 40,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          side: BorderSide(color: Colors.grey),
                        ),
                        child: Container(
                          child: Text('Back',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyText1),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                  SizedBox(width: 21),
                  SizedBox(
                    width: 140,
                    height: 40,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          side:
                              BorderSide(color: Theme.of(context).primaryColor),
                        ),
                        color: Theme.of(context).primaryColor,
                        child: Container(
                          child: Text('Sign Up',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline3),
                        ),
                        onPressed: () => {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => QR()))
                            }),
                  ),
                  SizedBox(width: 21),
                ],
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
                                        builder: (context) => QR()));
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
      ),
    );
  }
}
