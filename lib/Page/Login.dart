import 'package:flutter/material.dart';
import 'package:signinpage/Page/Homepage.dart';
import 'package:signinpage/Page/Signin.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email = new TextEditingController();
  var pass = new TextEditingController();
  bool rememBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Image(
                  image: AssetImage('images/Main_Logo.png'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 50.0,
                        fontFamily: 'NotoSan',
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: email,
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Icon(Icons.email),
                          ),
                          labelText: 'Email',
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: pass,
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Icon(Icons.vpn_key),
                          ),
                          labelText: 'Password',
                          border: OutlineInputBorder()),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Checkbox(
                            value: rememBox,
                            onChanged: (bool value) {
                              setState(() {
                                rememBox = value;
                              });
                            }),
                        Text('Remember me'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          color: Color(0xFF1976D2),
                          onPressed: () {
                            String n = email.text;
                            String m = pass.text;
                            print(n);
                            print(m);
                            if (n.compareTo(data.mail) == 0 &&
                                m.compareTo(data.password) == 0) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Homepage()));
                            }
                          },
                          textColor: Colors.white,
                          padding: EdgeInsets.all(0.0),
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 10.0,
                                bottom: 10.0,
                                right: 110.0,
                                left: 110.0),
                            child: Text(
                              'Log in',
                              style: TextStyle(fontSize: 27),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        GestureDetector(
                          child: Text(
                            'Forget your password?',
                            style: TextStyle(
                              fontSize: 14.5,
                              color: Colors.blueAccent,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          onTap: () {
                            /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => setring()));*/
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          child: Text(
                            'Create account',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.black),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signin()));
                          },
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
