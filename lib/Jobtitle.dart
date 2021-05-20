import 'package:allinone/Screens/BrandDivider.dart';
import 'package:allinone/Screens/JobApply.dart';
import 'package:flutter/material.dart';

class DisplayJobtitle extends StatefulWidget {
  @override
  _DisplayJobtitleState createState() => _DisplayJobtitleState();
}

class _DisplayJobtitleState extends State<DisplayJobtitle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find your Job '),
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
                      builder: (context) => ApplyForJob(),
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
