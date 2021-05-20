import 'package:allinone/Screens/Mainpage.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class CreateJobs extends StatefulWidget {
  @override
  _CreateJobsState createState() => _CreateJobsState();
}

class _CreateJobsState extends State<CreateJobs> {
  String jobtitle;
  String jobDescription;
  String salary;
  String experinecedRecquired;
  String places;
  String jobCatagory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a job '),
        centerTitle: true,
        actions: [
          Icon(Icons.home),
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
                  jobCatagory = val;
                },
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal),
                    ),
                    hintText: 'Job Catagory   ',
                    labelText: 'Job Catagory',
                    prefixIcon: const Icon(
                      Icons.work_rounded,
                      color: Colors.blue,
                    ),
                    suffixStyle: const TextStyle(color: Colors.blue)),
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (val) {
                  jobDescription = val;
                },
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal),
                    ),
                    hintText: 'Job title   ',
                    labelText: 'Job title',
                    prefixIcon: const Icon(
                      Icons.work_rounded,
                      color: Colors.blue,
                    ),
                    suffixStyle: const TextStyle(color: Colors.blue)),
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                maxLines: 4,
                onChanged: (val) {
                  jobDescription = val;
                },
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal),
                    ),
                    hintText: 'Enter job Description ',
                    labelText: 'Job Description ',
                    prefixIcon: const Icon(
                      OMIcons.work,
                      color: Colors.blue,
                    ),
                    suffixStyle: const TextStyle(color: Colors.blue)),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.elliptical(15.0, 15.0),
                ),
                border: Border.all(color: Colors.blue[800], width: 3.0),
              ),
              height: 50.0,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: DropdownButton(
                  hint: salary == null
                      ? Text('Slect Salary')
                      : Text(
                          salary,
                          style: TextStyle(color: Colors.blue),
                        ),
                  isExpanded: true,
                  iconSize: 30.0,
                  style: TextStyle(color: Colors.blue),
                  items: [
                    '10k-20k',
                    '20k-30k',
                    '30k-40k',
                    '40k-50k',
                    '50k-above'
                  ].map(
                    (val) {
                      return DropdownMenuItem<String>(
                        value: val,
                        child: Text(val),
                      );
                    },
                  ).toList(),
                  onChanged: (val) {
                    setState(
                      () {
                        salary = val;
                      },
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                maxLines: 2,
                onChanged: (val) {
                  experinecedRecquired = val;
                },
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal),
                    ),
                    hintText: 'What is Experience Recquired ? ',
                    labelText: 'Experience Recquired ',
                    prefixIcon: const Icon(
                      OMIcons.work,
                      color: Colors.blue,
                    ),
                    suffixStyle: const TextStyle(color: Colors.blue)),
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (val) {
                  experinecedRecquired = val;
                },
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal),
                    ),
                    hintText: 'Where is Company Located  ',
                    labelText: 'Location Search',
                    prefixIcon: const Icon(
                      OMIcons.locationCity,
                      color: Colors.blue,
                    ),
                    suffixStyle: const TextStyle(color: Colors.blue)),
              ),
            ),
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
                      'Submit Job',
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
