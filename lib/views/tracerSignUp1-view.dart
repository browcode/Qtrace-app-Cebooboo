import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:qtrace_app/views/establishmentSignUp2-view.dart';
import 'package:qtrace_app/views/tracerSignUp2-view.dart';
import 'package:string_validator/string_validator.dart';

class TracerSignUp1 extends StatefulWidget {
  @override
  _TracerSignUp1State createState() => _TracerSignUp1State();
}

class _TracerSignUp1State extends State<TracerSignUp1> {
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();

  String _lguName = '';
  String _firstName = '';
  String _lastName = '';

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
                padding: EdgeInsets.only(top: 95),
                child: SizedBox(
                  width: 344.24,
                  height: 152.71,
                  child: Image.asset('assets/images/Tracer1.png',
                      fit: BoxFit.contain),
                ),
              ),
              SizedBox(height: 24),
              SizedBox(
                  height: 32,
                  child: Text('Contact Tracer Sign Up',
                      style: Theme.of(context).textTheme.bodyText2)),
              SizedBox(
                height: 48,
                child: Text('We\'ll help you do your job',
                    style: Theme.of(context).textTheme.headline5),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 18,
                child: Text('LGU Name',
                    style: Theme.of(context).textTheme.headline6),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 64,
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'LGU name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                    validator: (val) {
                      if (val.isNotEmpty) {
                        return null;
                      } else {
                        return 'Enter a LGU Name';
                      }
                    },
                    onChanged: (val) {
                      setState(() => _lguName = val);
                    },
                  ),
                ),
              ),
              SizedBox(height: 24),
              SizedBox(
                height: 18,
                child: Text('Contact Person',
                    style: Theme.of(context).textTheme.headline6),
              ),
              SizedBox(height: 8),
              SizedBox(
                height: 64,
                child: Form(
                  key: _formKey1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'First Name',
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
              SizedBox(height: 16),
              SizedBox(
                height: 64,
                child: Form(
                  key: _formKey2,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                    validator: (val) {
                      if (val.isNotEmpty && isAlpha(val) || val.contains(' ')) {
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
              SizedBox(height: 30),
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
                              color: Theme.of(context).primaryColorLight,
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
                              color: Theme.of(context).primaryColorLight),
                        ),
                        color: Theme.of(context).primaryColorLight,
                        child: Container(
                          child: Text('Next',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline3),
                        ),
                        onPressed: () => {
                              if (_formKey.currentState.validate() &&
                                  _formKey1.currentState.validate() &&
                                  _formKey2.currentState.validate())
                                {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              TracerSignUp2()))
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
