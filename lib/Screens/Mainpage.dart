import 'package:allinone/Jobtitle.dart';

import 'package:allinone/Screens/BrandDivider.dart';
import 'package:allinone/Screens/CreateJob.dart';
import 'package:allinone/Screens/Myjobs.dart';
import 'package:allinone/Screens/Payment.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  bool drawerCanopen = true;
  final kDrawerItemStyle = TextStyle(
    fontSize: 16,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('All In One '),
        centerTitle: true,
      ),
      drawer: Container(
        width: 250,
        color: Colors.white,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[
              Container(
                color: Colors.white,
                height: 160,
                child: DrawerHeader(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'images/12.jpg',
                        height: 60,
                        width: 60,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Uchenna',
                            style: TextStyle(
                                fontSize: 20, fontFamily: 'Brand-Bold'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('View Profile'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              BrandDivider(),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateJobs(),
                    ),
                  );
                },
                leading: Icon(OMIcons.cardGiftcard),
                title: Text(
                  'Add a Job ',
                  style: kDrawerItemStyle,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Payment(),
                    ),
                  );
                },
                leading: Icon(OMIcons.creditCard),
                title: Text(
                  'Get Membership',
                  style: kDrawerItemStyle,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Myjobs(),
                    ),
                  );
                },
                leading: Icon(OMIcons.history),
                title: Text(
                  'My jobs',
                  style: kDrawerItemStyle,
                ),
              ),
              ListTile(
                leading: Icon(OMIcons.contactSupport),
                title: Text(
                  'Contact me ',
                  style: kDrawerItemStyle,
                ),
              ),
              ListTile(
                leading: Icon(OMIcons.info),
                title: Text(
                  'Log out ',
                  style: kDrawerItemStyle,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DisplayJobtitle(),
                    ),
                  );
                },
                child: Card(
                  color: Colors.blue,
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Icon(
                          Icons.restaurant,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 150, left: 110),
                        child: Text('Hotels',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.green,
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Icon(
                        OMIcons.work,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 120, left: 70),
                      child: Text(
                        'Office Jobs ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Card(
                color: Colors.orange,
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Icon(
                        OMIcons.groupWork,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 150, left: 100),
                      child: Text('Labour',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
              Card(
                color: Colors.orange,
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Icon(
                        Icons.access_alarm,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 150, left: 100),
                      child: Text('Clock',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
              Card(
                color: Colors.orange,
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Icon(
                        Icons.access_alarm,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 150, left: 100),
                      child: Text('Clock',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
              Card(
                color: Colors.orange,
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Icon(
                        Icons.access_alarm,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 150, left: 100),
                      child: Text('Clock',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
              Card(
                color: Colors.orange,
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Icon(
                        Icons.access_alarm,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 150, left: 100),
                      child: Text('Clock',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  resetApp() {
    setState(() {
      drawerCanopen = true;
    });
  }
}
