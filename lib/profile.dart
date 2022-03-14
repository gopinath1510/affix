import 'package:affix/info-card.dart';
import 'package:affix/pallete.dart';
import 'package:flutter/material.dart';

const url = 'https://user.appdeveloper.com';
const email = 'user@gamil.com';
const phone = '+91 9876543210';
const location = 'Chennai , India';
const date = 'Joined at 20-05-2021';

class profile extends StatelessWidget {
  const profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.blueGrey[800],
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: kWhite,
            ),
          ),
          title: Text(
            'Profile',
            style: kBodyText,
          ),
          centerTitle: true,
        ),
        body: 
        Column(children: [
          Center(
            child: SafeArea(
              
              child: Column(children: <Widget> [
              SizedBox(
                height: size.height * 0.05,
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/user-512.png'), 
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text('User', style: TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Newsreader1',
              ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                'App Developer',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey[200],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Newsreader2',
                ),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              InfoCard(text: phone, icon: Icons.phone, onPressed: () async{}),
              InfoCard(text: email, icon: Icons.email, onPressed: () async{}),
              InfoCard(text: date, icon: Icons.lock_clock, onPressed: () async{}),
              InfoCard(text: location, icon: Icons.location_city, onPressed: () async{}),
              InfoCard(text: url, icon: Icons.web, onPressed: () async{}),
              
            ]
            ),
          ),
          ),]
        ),
        );
  }
}
