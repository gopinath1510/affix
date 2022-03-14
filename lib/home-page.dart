

import 'package:affix/assignments.dart';
import 'package:affix/events.dart';
import 'package:affix/internships.dart';
import 'package:affix/jobs.dart';
import 'package:affix/profile.dart';
import 'package:affix/projects.dart';
import 'package:flutter/material.dart';
import 'package:affix/side-bar.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
   
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
   
      return Scaffold(
        backgroundColor: Colors.black,
       drawer: NavBar(),
       appBar: AppBar(
        title: Text("AFFIX",
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body:  Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/home.jpg')),
            ),
          
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: AssetImage(
                              'assets/images/user-512.png'),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'User',
                              style: TextStyle(
                                  fontFamily: "Newsreader1",
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            SizedBox(
                          height: 10,),
                            Text(
                              'user@gamil.com',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontFamily: "Newsreader2"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary: false,
                      crossAxisCount: 2,
                      children: <Widget>[

                        Card(
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                               SizedBox(
                             height: 6,
                            ),
                              Image.asset('assets/images/profile.png',width: 100),
                              SizedBox(
                             height: 5,
                            ),
                            ListTile(
                              title: Text(
                                '  My Profile',
                                style: TextStyle(
                                  fontFamily: 'Newsreader2',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context, new MaterialPageRoute(
                                  builder: (context) => profile()
                                  )
                                  );
                              }),
                            
                            ],
                          ),
                        ),

                        Card(
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset('assets/images/Jobs.jpg', width: 80,),
                              SizedBox(
                             height: 10,
                            ),
                              ListTile(
                              title: Text(
                                  '        Jobs',
                                  style: TextStyle(
                                  fontFamily: 'Newsreader2',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                
                                
                              ),
                              
                              onTap: () {
                                Navigator.push(context, new MaterialPageRoute(
                                  builder: (context) => job()
                                  )
                                  );
                              }),
                            ],
                          ),
                        ),

                        Card(
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                               SizedBox(
                                height: 10,
                              ),
                              Image.asset('assets/images/book.jpg',width: 100),
                              SizedBox(
                             height: 10,
                            ),
                            ListTile(
                              title: Text(
                                'Assignments',
                                style:  TextStyle(
                                  fontFamily: 'Newsreader2',
                                  fontSize: 19.5,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                               onTap: () {
                                Navigator.push(context, new MaterialPageRoute(
                                  builder: (context) => assignment()
                                  )
                                  );
                              }
                            )],
                          ),
                        ),

                         Card(
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset('assets/images/intern.jpg',width: 130),
                              SizedBox(
                             height: 10,
                              ),
                              ListTile(
                              title: Text(
                                '   Internship',
                                style:  TextStyle(
                                  fontFamily: 'Newsreader2',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context, new MaterialPageRoute(
                                  builder: (context) => internship()
                                  )
                                  );
                              }
                              )],
                          ),
                        ),

                        Card(
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset('assets/images/project.png',width: 120),
                               SizedBox(
                             height: 10,
                            ),
                            ListTile(
                              title: Text(
                                '    Projects',
                                style:  TextStyle(
                                  fontFamily: 'Newsreader2',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context, new MaterialPageRoute(
                                  builder: (context) => project()
                                  )
                                  );
                              }
                            )],
                          ),
                        ),

                        Card(
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height:10,
                              ),
                              Image.asset('assets/images/event.jpg',width: 100),
                               SizedBox(
                             height: 10,
                              ),
                              ListTile(
                               title: Text(
                                '       Events',
                                  style:  TextStyle(
                                  fontFamily: 'Newsreader2',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context, new MaterialPageRoute(
                                  builder: (context) => event()
                                  )
                                  );
                              }
                              )],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
}