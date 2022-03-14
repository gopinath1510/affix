import 'package:affix/pallete.dart';
import 'package:flutter/material.dart';
import 'package:affix/empty-state.dart';
import 'package:affix/form.dart';
import 'package:affix/report-user.dart';

class report extends StatefulWidget {
  @override
  _MultiFormState createState() => _MultiFormState();
}

class _MultiFormState extends State<report> {
  List<UserForm> users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: kWhite,
            ),
          ),
          backgroundColor: Colors.black,
        title: Text('Report'),
        centerTitle: true,
        actions: <Widget>[
          FlatButton(
            child: Text('send'),
            textColor: Colors.white,
            onPressed: onSave,
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff),
              Color(0xff),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: users.length <= 0
            ? Center(
                child: EmptyState(
                  title: 'Oops !!',
                  message: 'Add report by tapping add button below',
                ),
              )
            : ListView.builder(
                addAutomaticKeepAlives: true,
                itemCount: users.length,
                itemBuilder: (_, i) => users[i],
              ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: onAddForm,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
    );
  }

  ///on form user deleted
  void onDelete(User _user) {
    setState(() {
      var find = users.firstWhere(
        (it) => it.user == _user,
        orElse: () => null,
      );
      if (find != null) users.removeAt(users.indexOf(find));
    });
  }

  ///on add form
  void onAddForm() {
    setState(() {
      var _user = User();
      users.add(UserForm(
        user: _user,
        onDelete: () => onDelete(_user),
      ));
    });
  }

  ///on save forms
  void onSave() {
    if (users.length > 0) {
      var allValid = true;
      users.forEach((form) => allValid = allValid && form.isValid());
      if (allValid) {
        var data = users.map((it) => it.user).toList();
        Navigator.push(
          context,
          MaterialPageRoute(
            fullscreenDialog: true,
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text('List of Reports'),
                    backgroundColor: Colors.black,
                  ),
                  body: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (_, i) => ListTile(
                          leading: CircleAvatar(
                            child: Text(data[i].fullName.substring(0, 1)),
                          ),
                          title: Text(data[i].fullName),
                          subtitle: Text(data[i].email),
                        ),
                  ),
                ),
          ),
        );
      }
    }
  }
}