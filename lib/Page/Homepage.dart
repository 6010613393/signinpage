import 'package:flutter/material.dart';
import 'package:signinpage/Page/Login.dart';
import 'package:signinpage/Page/Signin.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var name = data.first_name + ' ' + data.last_name;
  var email = data.mail;
  var pass = data.password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Homepage          '),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Container(
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 34,
                        backgroundImage: AssetImage(
                            'images/79369491_166025057835509_2466035094271232486_n.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '$name',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '$email',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(color: Colors.blueAccent),
            ),
            ListTile(
              title: RaisedButton(
                color: Color(0xFFE53935),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                textColor: Colors.white,
                padding: EdgeInsets.all(0.0),
                child: Container(
                  padding: EdgeInsets.only(
                      top: 10.0, bottom: 10.0, right: 10.0, left: 10.0),
                  child: Text(
                    'Log out',
                    style: TextStyle(fontSize: 27),
                  ),
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
