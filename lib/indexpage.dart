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
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Create Business Card'),
          centerTitle: true,
          actions: [IconButton(icon: Icon(Icons.list), onPressed: null)],
        ),
        body: SafeArea(
            child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 50,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/po.jpg'),
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'name',
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
                      labelText: 'position',
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
                      labelText: 'phone number',
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
                      labelText: 'email',
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
                      labelText: 'work address',
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
                      labelText: 'home address',
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
                      child: Divider(color: Colors.white)),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Builder(builder: (BuildContext context) {
                      return FlatButton(
                          child: const Text('Generate'),
                          onPressed: name.isEmpty
                              ? null
                              : () {
                                  _generateCard();
                                });
                    })
                  ],
                ),
              ),
            )
          ],
        )));
  }

  Scaffold _generateCard() {
    return Scaffold(body: Container());
  }
}
