
import 'package:affix/pallete.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class internship extends StatelessWidget {
  const internship({Key key}) : super(key: key);

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
            'Internships',
            style: kBodyText,
          ),
          centerTitle: true,
        ),
        body: 
        WebView(
          initialUrl: "https://intern.gokulcse.repl.co",
          javascriptMode: JavascriptMode.unrestricted,
        ),
        );
  }
}