
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String text;
  final IconData icon;
  Function onPressed;

  InfoCard({Key key,
   @required this.text, 
   @required this.icon,
   @required this.onPressed
   }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListTile(
          leading: Icon(
            icon, color: Colors.teal,
          ),
          title: Text(text, style: TextStyle(
            color: Colors.teal,
            fontSize: 20,
            fontFamily: 'Newsreader2',
          ),),
        ),
      ),
    );
    
  }
}