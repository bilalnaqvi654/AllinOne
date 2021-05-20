import 'package:allinone/Screens/AppliedUsers.dart';
import 'package:allinone/Screens/BrandDivider.dart';
import 'package:allinone/Screens/JobApply.dart';
import 'package:flutter/material.dart';

class Myjobs extends StatefulWidget {
  @override
  MyjobsState createState() => MyjobsState();
}

class MyjobsState extends State<Myjobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Jobs '),
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AppliedUsers(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text('waiters'),
                ),
              ),
              BrandDivider(),
            ],
          );
        },
      ),
    );
  }
}
