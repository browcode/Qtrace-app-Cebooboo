import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:qtrace_app/views/citizenSignUp3-view.dart';
import 'package:string_validator/string_validator.dart';

class CitizenSignUp2 extends StatefulWidget {
  @override
  _CitizenSignUp2State createState() => _CitizenSignUp2State();
}

class _CitizenSignUp2State extends State<CitizenSignUp2> {
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();

  String _cntctNumber = '';
  String _landNumber = '';
  String _email = '';

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
                  width: 305,
                  height: 227.05,
                  child: Image.asset('assets/images/CitizenSignUp2.png',
                      fit: BoxFit.contain),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                  height: 39,
                  child: Text('Citizen Sign Up',
                      style: Theme.of(context).textTheme.bodyText2)),
              SizedBox(
                height: 50,
                child: Text(
                    'We\'ll let you know when you come into\nContact with an Infected Person',
                    style: Theme.of(context).textTheme.headline5),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 18,
                child: Text('Contact Details',
                    style: Theme.of(context).textTheme.headline6),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 64,
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Contact Number',
                      fillColor: HexColor('#EFF0F6'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                    validator: (val) {
                      if (val.isNotEmpty && isNumeric(val)) {
                        return null;
                      } else {
                        return 'Enter a Valid Contact Number';
                      }
                    },
                    onChanged: (val) {
                      setState(() => _cntctNumber = val);
                    },
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 64,
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Landline Number (optional)',
                      fillColor: HexColor('#EFF0F6'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                    onChanged: (val) {
                      setState(() => _landNumber = val);
                    },
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 64,
                child: Form(
                  key: _formKey1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      fillColor: HexColor('#EFF0F6'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                    validator: (val) {
                      if (isEmail(val)) {
                        return null;
                      } else {
                        return 'Enter a Valid Email';
                      }
                    },
                    onChanged: (val) {
                      setState(() => _email = val);
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
                                  _formKey1.currentState.validate())
                                {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CitizenSignUp3()))
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
