import 'package:flutter/material.dart';
import 'package:qtrace_app/views/dashboard.dart';

class QR extends StatefulWidget {
  @override
  _QRState createState() => _QRState();
}

class _QRState extends State<QR> {
  String _uid = 'J4BuQx4A4IegtEETsIXLdr5Y1LP2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 44),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(top: 50),
              child: IconButton(
                padding: new EdgeInsets.all(0.0),
                icon: Icon(Icons.qr_code_scanner_rounded, size: 40),
                color: Theme.of(context).primaryColor,
                onPressed: () {},
              ),
            ),
            Image.asset('assets/images/QR.png', fit: BoxFit.contain),
            SizedBox(
              width: 326,
              height: 18,
              child: Text('Your data is safe. Heres what’s encoded in',
                  style: Theme.of(context).textTheme.headline5),
            ),
            Container(
              alignment: Alignment.center,
              child: SizedBox(
                width: 274,
                height: 50,
                child: Text(
                  'Your seQR Code',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'PoppinsBold',
                    fontSize: 30.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 29),
            Container(
              alignment: Alignment.center,
              child: SizedBox(
                width: 322,
                height: 32,
                child: Text(
                  _uid,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontFamily: 'PoppinsRegular',
                    fontSize: 19,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.center,
              child: SizedBox(
                width: 208,
                height: 40,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      side: BorderSide(color: Theme.of(context).primaryColor),
                    ),
                    color: Theme.of(context).primaryColor,
                    child: Container(
                      child: Text('Save as JPEG',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline3),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
            ),
            SizedBox(height: 24),
            Container(
              alignment: Alignment.center,
              child: SizedBox(
                width: 208,
                height: 40,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color: Theme.of(context).primaryColor),
                  ),
                  child: Container(
                    child: Text('Dashboard',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText1),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dashboard()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
