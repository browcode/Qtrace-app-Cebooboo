import 'package:flutter/material.dart';
import 'package:qtrace_app/views/establishmentSignUp3-view.dart';
import 'package:qtrace_app/views/tracerSignUp3-view.dart';

class TracerSignUp2 extends StatefulWidget {
  @override
  _TracerSignUp2State createState() => _TracerSignUp2State();
}

class _TracerSignUp2State extends State<TracerSignUp2> {
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();

  String _province = '';
  String _city = '';
  String _brgy = '';
  String _bldg = '';
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
                padding: EdgeInsets.only(top: 61),
                child: SizedBox(
                  width: 359.96,
                  height: 196.03,
                  child: Image.asset('assets/images/Tracer2.png',
                      fit: BoxFit.contain),
                ),
              ),
              SizedBox(height: 11),
              SizedBox(
                  height: 32,
                  child: Text('Contact Tracer Sign Up',
                      style: Theme.of(context).textTheme.bodyText2)),
              SizedBox(height: 10),
              SizedBox(
                height: 48,
                child: Text(
                    'We\'ll protect your data for you,\nDon\'t worry its seQR.',
                    style: Theme.of(context).textTheme.headline5),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 32,
                child: Text('LGU Address',
                    style: Theme.of(context).textTheme.headline6),
              ),
              SizedBox(
                height: 64,
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Province',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                    validator: (val) {
                      if (val.isNotEmpty) {
                        return null;
                      } else {
                        return "Required";
                      }
                    },
                    onChanged: (val) {
                      setState(() => _province = val);
                    },
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 64,
                child: Form(
                  key: _formKey1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'City',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                    validator: (val) {
                      if (val.isNotEmpty) {
                        return null;
                      } else {
                        return "Required";
                      }
                    },
                    onChanged: (val) {
                      setState(() => _city = val);
                    },
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 64,
                child: Form(
                  key: _formKey2,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Brgy.',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                    validator: (val) {
                      if (val.isNotEmpty) {
                        return null;
                      } else {
                        return "Required";
                      }
                    },
                    onChanged: (val) {
                      setState(() => _brgy = val);
                    },
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 64,
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Bldg. / Block (optional)',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                    onChanged: (val) {
                      setState(() => _bldg = val);
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
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
                                              TracerSignUp3()))
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
