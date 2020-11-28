import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:qtrace_app/views/establishmentSignUp3-view.dart';

class EstablishmentSignUp2 extends StatefulWidget {
  @override
  _EstablishmentSignUp2State createState() => _EstablishmentSignUp2State();
}

class _EstablishmentSignUp2State extends State<EstablishmentSignUp2> {
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
                  child: Image.asset('assets/images/Establishment2.png',
                      fit: BoxFit.contain),
                ),
              ),
              SizedBox(height: 11),
              SizedBox(
                  height: 32,
                  child: Text('Establishment Sign Up',
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
                child: Text('Establishment Address',
                    style: Theme.of(context).textTheme.headline6),
              ),
              SizedBox(
                height: 64,
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Province',
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
                height: 64,
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'City',
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
                height: 64,
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Brgy.',
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
                height: 64,
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Bldg. / Block',
                      fillColor: HexColor('#EFF0F6'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(),
                      ),
                    ),
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
                                          EstablishmentSignUp3()))
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
