import 'package:affix/home-page.dart';
import 'package:affix/login-screen.dart';
import 'package:flutter/material.dart';
import 'package:affix/pallete.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({
    Key key,
    @required this.buttonName,
  }) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kBlue,
      ),
      child: FlatButton(
        onPressed: () {
          Navigator.push(context, new MaterialPageRoute(
            builder: (context) => LoginScreen()
          ),
          );
        },
        child: Text(
          buttonName,
          style: kBodyText.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}