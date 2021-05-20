import 'package:allinone/Screens/Homepage.dart';
import 'package:allinone/Screens/Login.dart';
import 'package:allinone/Screens/Mainpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_button/custom/hover_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool istextSecured = true;
  String email;
  String password;
  String name;
  String repeatpassword;
  String phoneNo;

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
          'Sign up for free',
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
            CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('images/12.jpg'),
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
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: GestureDetector(
                          onTap: () {
                            showPassword();
                          },
                          child: FaIcon(FontAwesomeIcons.eye)),
                    ),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (val) {
                  repeatpassword = val;
                },
                obscureText: istextSecured,
                decoration: new InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: GestureDetector(
                          onTap: () {
                            showPassword();
                          },
                          child: FaIcon(FontAwesomeIcons.eye)),
                    ),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (val) {
                  name = val;
                },
                obscureText: istextSecured,
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal),
                  ),
                  hintText: 'Enter your Name ',
                  labelText: 'Name',
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  suffixStyle: const TextStyle(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (val) {
                  password = val;
                },
                obscureText: istextSecured,
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal),
                    ),
                    hintText: 'Enter your Phone number ',
                    labelText: 'Phone Number',
                    prefixIcon: const Icon(
                      Icons.phone,
                      color: Colors.blue,
                    ),
                    suffixStyle: const TextStyle(color: Colors.blue)),
              ),
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
                      'Sign up ',
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
                    builder: (context) => Login(),
                  ),
                );
              },
              child: Text(
                'Already have a Accound? Sign in for free ',
                style: TextStyle(color: Colors.grey[700], fontSize: 15.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
