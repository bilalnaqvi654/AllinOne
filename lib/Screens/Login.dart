import 'package:allinone/Screens/ForgetPassword.dart';
import 'package:allinone/Screens/Homepage.dart';
import 'package:allinone/Screens/Mainpage.dart';
import 'package:allinone/Screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_button/custom/hover_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email;
  String password;
  bool istextSecured = true;
  void showPassword() {
    if (istextSecured)
      setState(() {
        istextSecured = false;
      });
    else {
      setState(() {
        istextSecured = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Log in ',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (val) {
                  email = val;
                },
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)),
                    hintText: 'Enter your email',
                    labelText: 'Email',
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Colors.blue,
                    ),
                    suffixStyle: const TextStyle(color: Colors.blue)),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (val) {
                  password = val;
                },
                obscureText: istextSecured,
                decoration: new InputDecoration(
                    suffixIcon: GestureDetector(
                        onTap: () {
                          showPassword();
                        },
                        child: FaIcon(FontAwesomeIcons.eye)),
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal),
                    ),
                    hintText: 'Enter your Password ',
                    labelText: 'Password',
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.blue,
                    ),
                    suffixStyle: const TextStyle(color: Colors.blue)),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgetPassword(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 14.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forget Password',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.red,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50.0,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blueAccent,
                        Colors.blue[900],
                      ],
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Log in ',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Signup(),
                  ),
                );
              },
              child: Text(
                'Dont have a account? Sign up for free ',
                style: TextStyle(color: Colors.grey[700], fontSize: 15.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
