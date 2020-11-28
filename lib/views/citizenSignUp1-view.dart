import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:qtrace_app/views/citizenSignUp2-view.dart';

class CitizenSignUp1 extends StatefulWidget {
  @override
  _CitizenSignUpState createState() => _CitizenSignUpState();
}

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
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'First Name',
                      fillColor: HexColor('#EFF0F6'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
              SizedBox(
                height: 64,
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                      fillColor: HexColor('#EFF0F6'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(),
                      ),
                    ),
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
                      ),
                    ),
                  ),
                  SizedBox(width: 16, height: 57),
                  SizedBox(
                    width: 100,
                    height: 57,
                    child: Form(
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
                      ),
                    ),
                  ),
                  SizedBox(width: 16, height: 57),
                  SizedBox(
                    width: 100,
                    height: 57,
                    child: Form(
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
                          child: Text('Next',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline3),
                        ),
                        onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CitizenSignUp2()))
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
