import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  String name = "",
      position = "",
      phonenumber = "",
      email = "",
      work = "",
      home = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Create Business Card'),
          centerTitle: true,
          actions: [IconButton(icon: Icon(Icons.list), onPressed: null)],
          backgroundColor: Colors.teal,
        ),
        body: SafeArea(
            child: ListView(
          scrollDirection: Axis.vertical,
          addAutomaticKeepAlives: false,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/po.jpg'),
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter name',
                  ),
                  maxLines: 2,
                  onChanged: (String txt) {
                    setState(() {
                      name = txt;
                    });
                  },
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Position',
                    hintText: 'Enter position',
                  ),
                  maxLines: 2,
                  onChanged: (String txt) {
                    setState(() {
                      position = txt;
                    });
                  },
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    hintText: 'Enter phone number',
                  ),
                  maxLines: 2,
                  onChanged: (String txt) {
                    setState(() {
                      phonenumber = txt;
                    });
                  },
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'E-mail',
                    hintText: 'Enter email',
                  ),
                  maxLines: 2,
                  onChanged: (String txt) {
                    setState(() {
                      email = txt;
                    });
                  },
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Work address',
                    hintText: 'Enter work address',
                  ),
                  maxLines: 2,
                  onChanged: (String txt) {
                    setState(() {
                      work = txt;
                    });
                  },
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Home Address',
                    hintText: 'Enter home address',
                  ),
                  maxLines: 2,
                  onChanged: (String txt) {
                    setState(() {
                      home = txt;
                    });
                  },
                ),
                SizedBox(
                    height: 20.0,
                    width: 250.0,
                    child: Divider(color: Colors.teal)),
              ],
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Builder(builder: (BuildContext context) {
                      return RaisedButton(
                          child: const Text('Generate'),
                          onPressed: name.isEmpty
                              ? null
                              : () {
                                  _generateCard();
                                });
                    })
                  ],
                ))
          ],
        )));
  }

  Scaffold _generateCard() {
    return Scaffold(body: Container());
  }
}
