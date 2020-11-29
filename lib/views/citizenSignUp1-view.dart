import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:qtrace_app/views/citizenSignUp2-view.dart';
import 'package:string_validator/string_validator.dart';

class CitizenSignUp1 extends StatefulWidget {
  @override
  _CitizenSignUpState createState() => _CitizenSignUpState();
}

final _formKey = GlobalKey<FormState>();
final _formKey1 = GlobalKey<FormState>();
final _formKey2 = GlobalKey<FormState>();
final _formKey3 = GlobalKey<FormState>();
final _formKey4 = GlobalKey<FormState>();

//fields to be inputted on this page
String _firstName = '';
String _lastName = '';
String _day = '';
String _month = '';
String _year = '';

class _CitizenSignUpState extends State<CitizenSignUp1> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 56),
                child: SizedBox(
                  width: 343.19,
                  height: 210.03,
                  child: Image.asset('assets/images/CitizenSignUp1.png',
                      fit: BoxFit.contain),
                ),
              ),
              SizedBox(height: 29),
              SizedBox(
                  height: 39,
                  child: Text('Citizen Sign Up',
                      style: Theme.of(context).textTheme.bodyText2)),
              SizedBox(
                height: 24,
                child: Text('Sign up and claim your SeQR Code',
                    style: Theme.of(context).textTheme.headline5),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 18,
                child:
                    Text('Name', style: Theme.of(context).textTheme.headline6),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 64,
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'First Name',
                      fillColor: HexColor('#EFF0F6'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                    validator: (val) {
                      if (val.isNotEmpty && isAlpha(val) || val.contains(' ')) {
                        return null;
                      } else {
                        return 'Enter a Valid First Name';
                      }
                    },
                    onChanged: (val) {
                      setState(() => _firstName = val);
                    },
                  ),
                ),
              ),
              SizedBox(height: 24),
              SizedBox(
                height: 64,
                child: Form(
                  key: _formKey1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                      fillColor: HexColor('#EFF0F6'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                    validator: (val) {
                      if (val.isNotEmpty && isAlpha(val)) {
                        return null;
                      } else {
                        return 'Enter a Valid Last Name';
                      }
                    },
                    onChanged: (val) {
                      setState(() => _lastName = val);
                    },
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 32,
                child: Text('Date of Birth',
                    style: Theme.of(context).textTheme.headline6),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: 57,
                    width: 100,
                    child: Form(
                      key: _formKey2,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          labelText: 'dd',
                          fillColor: HexColor('#EFF0F6'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: BorderSide(),
                          ),
                        ),
                        validator: (val) {
                          if ((val.isNotEmpty &&
                              int.parse(val) >= 1 &&
                              int.parse(val) <= 31)) {
                            return null;
                          } else {
                            return 'Invalid Day';
                          }
                        },
                        onChanged: (val) {
                          setState(() => _day = val);
                        },
                      ),
                    ),
                  ),
                  SizedBox(width: 16, height: 57),
                  SizedBox(
                    width: 100,
                    height: 57,
                    child: Form(
                      key: _formKey3,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          labelText: 'mm',
                          fillColor: HexColor('#EFF0F6'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: BorderSide(),
                          ),
                        ),
                        validator: (val) {
                          if ((val.isNotEmpty &&
                              int.parse(val) >= 1 &&
                              int.parse(val) <= 12)) {
                            return null;
                          } else {
                            return 'Invalid Month';
                          }
                        },
                        onChanged: (val) {
                          setState(() => _month = val);
                        },
                      ),
                    ),
                  ),
                  SizedBox(width: 16, height: 57),
                  SizedBox(
                    width: 100,
                    height: 57,
                    child: Form(
                      key: _formKey4,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          labelText: 'yyyy',
                          fillColor: HexColor('#EFF0F6'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: BorderSide(),
                          ),
                        ),
                        validator: (val) {
                          if ((val.isNotEmpty &&
                              int.parse(val) >= 1900 &&
                              int.parse(val) <= 2021)) {
                            return null;
                          } else {
                            return 'Invalid Year';
                          }
                        },
                        onChanged: (val) {
                          setState(() => _year = val);
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35),
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
                          child: Text(
                            'Back',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                              fontFamily: 'PoppinsRegular',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
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
                          side: BorderSide(
                              color: Theme.of(context).primaryColorDark),
                        ),
                        color: Theme.of(context).primaryColorDark,
                        child: Container(
                          child: Text('Next',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline3),
                        ),
                        onPressed: () => {
                              if (_formKey.currentState.validate() &&
                                  _formKey1.currentState.validate() &&
                                  _formKey2.currentState.validate() &&
                                  _formKey3.currentState.validate() &&
                                  _formKey4.currentState.validate())
                                {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CitizenSignUp2()))
                                }
                            }),
                  ),
                  SizedBox(width: 21),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
