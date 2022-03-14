


import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:affix/pallete.dart';
import 'package:flutter/material.dart';

import 'login-screen.dart';

class settings extends StatefulWidget {
  settings({Key key}) : super(key: key);

  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  bool valNotify1 = false;
  bool valNotify2 = true;
  bool valNotify3 = true;
  bool valNotify4 = false;
  bool valNotify5 = false;

  onChangedFunction1(bool newValue1){
    setState(() {
      valNotify1 = newValue1;
    });
  }

   onChangedFunction2(bool newValue2){
    setState(() {
      valNotify2 = newValue2;
    });
  }

   onChangedFunction3(bool newValue3){
    setState(() {
      valNotify3 = newValue3;
    });
  }
  
  onChangedFunction4(bool newValue4){
    setState(() {
      valNotify4 = newValue4;
    });
  }

  onChangedFunction5(bool newValue5){
    setState(() {
      valNotify5 = newValue5;
    });
  }
   
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       backgroundColor: kWhite,
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
            'Settings',
            style: kBodyText,
          ),
          centerTitle: true,
        ),
        body: Container(
            
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: [
                SizedBox(height: 40),
                Row(children: [
                  Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text('Account', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, 
                  ),
                  )
                ],),
                Divider(height: 20, thickness: 2,),
                SizedBox(height: 10
                ),
                buildAccountOption(context, 'Google'),
                buildAccountOption(context, 'Linkedin'),
                buildAccountOption(context, 'Facebook'),
                buildAccountOption1(context, '+ Add Account'),
                                
                                SizedBox(
                                  height: 40,
                                ),
                                Row(children: [
                                  Icon(Icons.volume_up_outlined, color: Colors.blue,),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('Notifications', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
                
                                ],),
                                Divider(height: 20, thickness: 2,),
                                SizedBox(height: 10,),
                                buildNotificationOption('Location', valNotify1, onChangedFunction1),
                                buildNotificationOption('Account Active', valNotify2, onChangedFunction2),
                                buildNotificationOption('Opportunity', valNotify3, onChangedFunction3),
                                buildNotificationOption('Smart Services', valNotify4, onChangedFunction4),
                                buildNotificationOption('Do not disturb', valNotify5, onChangedFunction5),
                                Divider(height: 20, thickness: 2,),
                                SizedBox(height: 10,),
                                buildAccountOption2(context, 'Delete Account'),
                                                                SizedBox(
                                                                  height: 40,
                                                                ),
                                                                Row(children: [
                                                                  Icon(Icons.help, color: Colors.blue,),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  Text('Help & Support', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
                                                
                                                                ],),
                                                                Divider(height: 20, thickness: 2,),
                                                                SizedBox(height: 10,),
                                                                Text('For any help and support contact us on ',
                                                                style: TextStyle(fontFamily: 'Newsreader', fontSize: 20),
                                                                ),
                                                                SizedBox(height: 8,),
                                                                Text('www.affix.com or +91 8254716390', style: TextStyle(fontFamily: 'Newsreader', fontSize: 20),),
                                                                SizedBox(height: 50,),
                                                                Center(
                                                                  child: OutlinedButton(
                                                                    style: OutlinedButton.styleFrom(
                                                                      padding: const EdgeInsets.symmetric(horizontal: 40,),
                                                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                                                                    ),
                                                                    onPressed: () {
                                                                      Navigator.push(context, new MaterialPageRoute(builder: (context) => LoginScreen()));
                                                                    },
                                                                    child: Text('Sign Out', style: TextStyle(
                                                                      fontSize: 16,
                                                                      letterSpacing: 2.2, fontWeight: FontWeight.w700,
                                                                      color: Colors.black,
                                                                    )),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          )
                                                        
                                                    );
                                                  }
                                                    Padding buildNotificationOption(String title, bool value, Function onChangeMethod){
                                                      return Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Text(title, style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.w500,
                                                              color: Colors.black,
                                                            ),),
                                                            Transform.scale(scale: 0.7,
                                                            child: CupertinoSwitch(
                                                              activeColor: Colors.green,
                                                              trackColor: Colors.grey,
                                                              value: value,
                                                              onChanged: (bool newValue){
                                                                onChangeMethod(newValue);
                                                              }
                                                            )
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    }
                                                
                                      GestureDetector buildAccountOption1(BuildContext context, String title) {
                                        return GestureDetector(
                                        onTap: () {
                                          showDialog(context: context, builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text(title),
                                              content: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  
                                                  Text('Do you want to add account ?', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),)
                                                ],
                                              ),
                                            
                                            actions: [
                                              TextButton(onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text('Yes', style: TextStyle(color: Colors.black),),
                                              ),
                                            
                                            ]
                                          );
                                          }
                                          
                                          );
                                
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(title, style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black
                                              ),),
                                              Icon(
                                                Icons.arrow_forward_ios,
                                                color: Colors.black,
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                      }
                                
                                  
  GestureDetector buildAccountOption2(BuildContext context, String title){
      return GestureDetector(
        onTap: () {
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              
              title: Text(title, style: TextStyle(color: Colors.red),), 
              
               content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  
                  Text('Are you sure ?', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),)
                ],
              ),
            
            actions: [
              TextButton(onPressed: () {
               Navigator.push(context, new MaterialPageRoute(
                builder: (context) => LoginScreen()
              ));
              },
              child: Text('Yes', style: TextStyle(color: Colors.black),),
              ),
            
            ]
          );
          }
          
          );

        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black
              ),),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ],
          ),
        ),
      );
      
  }
  }

  GestureDetector buildAccountOption(BuildContext context, String title){
      return GestureDetector(
        onTap: () {
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              
              title: Text(title),
              
               content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  
                  Text('You have been linked ! ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),)
                ],
              ),
            
            actions: [
              TextButton(onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close', style: TextStyle(color: Colors.black),),
              ),
            
            ]
          );
          }
          
          );

        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black
              ),),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ],
          ),
        ),
      );
      
  }
