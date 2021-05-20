import 'package:allinone/Screens/BrandDivider.dart';

import 'package:allinone/Screens/Myjobs.dart';
import 'package:flutter/material.dart';

class AppliedUserDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.home),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    'Name :',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 14.0,
                  ),
                  Text(
                    'Bilal',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            BrandDivider(),
            SizedBox(
              height: 14.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    'Salary :',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 14.0,
                  ),
                  Text(
                    '25 k ',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            BrandDivider(),
            SizedBox(
              height: 14.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    'Experience :',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Text(
                    '2 years ',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            BrandDivider(),
            SizedBox(
              height: 24.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Myjobs(),
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
                      'Download Cv ',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
