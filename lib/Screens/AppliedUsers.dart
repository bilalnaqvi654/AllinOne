import 'package:allinone/Screens/AppliedIserDetails.dart';
import 'package:allinone/Screens/BrandDivider.dart';
import 'package:allinone/Screens/JobApply.dart';
import 'package:flutter/material.dart';

class AppliedUsers extends StatefulWidget {
  @override
  _AppliedUsersState createState() => _AppliedUsersState();
}

class _AppliedUsersState extends State<AppliedUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Application For Jobs '),
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
                      builder: (context) => AppliedUserDetails(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text('Bilal'),
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
