import 'dart:io';

import 'package:allinone/Screens/Mainpage.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class ApplyForJob extends StatefulWidget {
  @override
  _ApplyForJobState createState() => _ApplyForJobState();
}

class _ApplyForJobState extends State<ApplyForJob> {
  String name;
  String mobileNumber;
  String email;
  PlatformFile file;
  PlatformFile file1;
  Widget pdfVidget(String title) {
    return Text('$title');
  }

  void pickFile() async {
    FilePickerResult result =
        await FilePicker.platform.pickFiles(type: FileType.any);

    if (result != null) {
      file = result.files.first;

      print(file.path);
      print(file.name);
    } else {
      print('not Selected');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apply For the Job '),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.home),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (val) {
                  name = val;
                },
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal),
                    ),
                    hintText: 'Enter Your Name    ',
                    labelText: 'Name',
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    suffixStyle: const TextStyle(color: Colors.blue)),
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (val) {
                  email = val;
                },
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal),
                    ),
                    hintText: 'Enter your email   ',
                    labelText: 'Email',
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),
                    suffixStyle: const TextStyle(color: Colors.blue)),
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.phone,
                onChanged: (val) {
                  mobileNumber = val;
                },
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal),
                    ),
                    hintText: 'Enter your Mobile number   ',
                    labelText: 'Mobile Number',
                    prefixIcon: const Icon(
                      Icons.phone,
                      color: Colors.blue,
                    ),
                    suffixStyle: const TextStyle(color: Colors.blue)),
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            Container(
              width: 250,
              height: 60.0,
              color: Colors.blue,
              child: TextButton(
                onPressed: () {
                  pickFile();
                },
                child: Text(
                  'Add CV',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 14.0),
            SizedBox(
              height: 14.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(),
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
                      'Submit Profile',
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
