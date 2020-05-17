import 'package:flutter/material.dart';
import 'package:signinpage/Page/Homepage.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}
class data {
  static String first_name;
  static String last_name;
  static String mail;
  static String password;
}

class _SigninState extends State<Signin> {
  var firstname = TextEditingController();
  var surname = TextEditingController();
  var email = TextEditingController();
  var pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Sign In            "),
        ),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'images/logo.png',
                  height: 150,
                  width: 150,
                ),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  controller: firstname,
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Icon(Icons.account_box),
                      ),
                      labelText: 'Firstname',
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: surname,
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Icon(Icons.account_box),
                      ),
                      labelText: 'Surname',
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Icon(Icons.email),
                      ),
                      labelText: 'Email',
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: pass,
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Icon(Icons.vpn_key),
                      ),
                      labelText: 'Password',
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      color: Color(0xFF1976D2),
                      onPressed: () {
                        data.first_name = firstname.text;
                        data.last_name = surname.text;
                        data.mail = email.text;
                        data.password = pass.text;

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Homepage()));
                      },
                      textColor: Colors.white,
                      padding: EdgeInsets.all(0.0),
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 10.0, bottom: 10.0, right: 110.0, left: 105.0),
                        child: Text(
                          'Sign In',
                          style: TextStyle(fontSize: 27),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
