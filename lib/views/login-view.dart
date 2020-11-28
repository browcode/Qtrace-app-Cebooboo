import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:qtrace_app/views/QR.dart';
import 'package:qtrace_app/views/choices-view.dart';

class LogInView extends StatefulWidget {
  @override
  _LogInViewState createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 140,
              ),
              SizedBox(
                width: 349.26,
                height: 152.85,
                child: Image.asset('assets/images/Qtrace.png',
                    fit: BoxFit.contain),
              ),
              SizedBox(height: 57),
              SizedBox(
                height: 57,
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
              SizedBox(height: 32),
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
              SizedBox(height: 70),
              SizedBox(
                width: 272,
                height: 40,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      side: BorderSide(color: HexColor('#EB0055')),
                    ),
                    color: HexColor('#EB0055'),
                    child: Container(
                      child: Text(
                        'Sign In',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'PoppinsRegular',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    onPressed: () => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => QR()))
                        }),
              ),
              SizedBox(height: 40),
              SizedBox(
                width: 272,
                height: 40,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      side: BorderSide(color: Colors.grey),
                    ),
                    color: Colors.white,
                    child: Container(
                      child: Text(
                        'Not yet Registered? Sign Up!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: HexColor('#EB0055'),
                          fontFamily: 'PoppinsRegular',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Choices()))
                        }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
