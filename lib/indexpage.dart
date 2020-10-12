import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

 class MyData {
    String name;
    String position;
    String email;
    String phonenumber;
    String work;
    String home;

    MyData(this.name, this.email, this.home, this.phonenumber, this.work, this.position);

  }

  

class _IndexPageState extends State<IndexPage> {

 final MyData myData;

  _IndexPageState(this.myData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          //backgroundColor: Colors.blueGrey,
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
                      myData.name = txt;
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
                      myData.position = txt;
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
                      myData.phonenumber = txt;
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
                      myData.email = txt;
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
                      myData.work = txt;
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
                      myData.home = txt;
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
                      return FlatButton(
                          child: const Text('Generate'),
                          onPressed: myData.name.isEmpty
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
