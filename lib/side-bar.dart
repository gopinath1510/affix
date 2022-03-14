
import 'package:affix/login-screen.dart';
import 'package:flutter/material.dart';
import 'package:affix/internships.dart';
import 'package:affix/events.dart';
import 'package:affix/jobs.dart';
import 'package:affix/assignments.dart';
import 'package:affix/projects.dart';

import 'package:affix/profile.dart';
import 'package:affix/report.dart';
import 'package:affix/settings.dart';
import 'package:affix/exit.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("User", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            accountEmail: Text("User@gmail.com",  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                    child: Image.asset(
                   'assets/images/user-512.png',
                    width: 90,
                    height: 90,
              )
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
              image: AssetImage('assets/images/bc.jpg'), fit: BoxFit.cover),
            ),
          ),
          Divider(thickness: 2,),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Profile"),
            onTap: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) => profile()));
            },
          ),
            ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {
              Navigator.push(context, new MaterialPageRoute(
                builder: (context) => settings(),
              ));
            },

          ),
          ListTile(
            leading: Icon(Icons.report_problem),
            title: Text("Report"),
            onTap: () {
              Navigator.push(context, new MaterialPageRoute(
                builder: (context) => report()
              ));
            },
          ),
         
        
          Divider(thickness: 2,),
           ListTile(
            leading: Icon(Icons.logout),
            title: Text("Log Out"),
            onTap: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Exit"),
            onTap: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) => exit()));
            },
          )
        ],
      ),
    );
  }
}
