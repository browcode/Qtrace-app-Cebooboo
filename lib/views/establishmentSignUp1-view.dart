import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:qtrace_app/views/establishmentSignUp2-view.dart';

class EstbalishmentSignUp1 extends StatefulWidget {
  @override
  _EstbalishmentSignUp1State createState() => _EstbalishmentSignUp1State();
}

class _EstbalishmentSignUp1State extends State<EstbalishmentSignUp1> {
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
                  child: Image.asset('assets/images/Establishment1.png',
                      fit: BoxFit.contain),
                ),
              ),
              SizedBox(height: 24),
              SizedBox(
                  height: 32,
                  child: Text('Establishment Sign Up',
                      style: Theme.of(context).textTheme.bodyText2)),
              SizedBox(
                height: 48,
                child: Text(
                    'Operate your business with SeQRity and peace of mind.',
                    style: Theme.of(context).textTheme.headline5),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 18,
                child: Text('Establishment Name',
                    style: Theme.of(context).textTheme.headline6),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 64,
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Contact Number',
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
                height: 18,
                child: Text('Contact Person',
                    style: Theme.of(context).textTheme.headline6),
              ),
              SizedBox(height: 8),
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
              SizedBox(height: 16),
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
                                      builder: (context) =>
                                          EstablishmentSignUp2()))
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
