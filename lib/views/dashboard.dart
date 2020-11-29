import 'package:flutter/material.dart';
import 'package:qtrace_app/views/inbox.dart';
import 'package:qtrace_app/views/login-view.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white60,
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(top: 32),
              child: IconButton(
                padding: new EdgeInsets.all(0.0),
                icon: Icon(Icons.logout, size: 40),
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LogInView()));
                },
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 137,
              width: 312,
              child: Image.asset('assets/images/Logo.png', fit: BoxFit.contain),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                    child: SizedBox(
                      height: 150,
                      width: 166,
                      child: Image.asset('assets/images/ALERTS INBOX.png',
                          fit: BoxFit.contain),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Inbox()));
                    }),
                SizedBox(
                  height: 150,
                  width: 166,
                  child: Image.asset('assets/images/Transmission Heatmap.png',
                      fit: BoxFit.contain),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 150,
                  width: 166,
                  child:
                      Image.asset('assets/images/QR1.png', fit: BoxFit.cover),
                ),
                SizedBox(
                  height: 150,
                  width: 166,
                  child: Image.asset('assets/images/VISIT ON WEB.png',
                      fit: BoxFit.contain),
                ),
              ],
            ),
            SizedBox(
              height: 150,
              width: 160,
              child:
                  Image.asset('assets/images/SCANNER1.png', fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
