import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Details {
  String name = 'Lawal Lawal',
      position = '.NET DEVELOPER',
      email = 'abyarddsallman@gmail.com',
      phone = '08062771522',
      work = 'Unilag, Akoka Lagos',
      home = '30A Igi Olugbin Ladilak Bariga Lagos';
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('images/po.jpg'),
                    ),
                    Text(
                      Details().name,
                      style: TextStyle(
                        fontFamily: 'BalsamiqSans',
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      Details().position,
                      style: TextStyle(
                          fontFamily: 'JosefinSans',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.5),
                    ),
                    SizedBox(
                        height: 20.0,
                        width: 250.0,
                        child: Divider(color: Colors.white)),
                    Card(
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: ListTile(
                          leading: Icon(
                            Icons.phone,
                            color: Colors.teal,
                          ),
                          title: Text(Details().phone,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'JosefinSans',
                                  color: Colors.teal.shade900)),
                        )),
                    Card(
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        //padding: EdgeInsets.all(10.0),
                        child: ListTile(
                          leading: Icon(Icons.email, color: Colors.teal),
                          title: Text(
                            Details().email,
                            style: TextStyle(
                                color: Colors.teal.shade900,
                                fontFamily: 'JosefinSans',
                                fontSize: 20.0),
                          ),
                        )),
                    Card(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: ListTile(
                        leading: Icon(Icons.work, color: Colors.teal),
                        title: Text(Details().work,
                            style: TextStyle(
                                color: Colors.teal.shade900,
                                fontFamily: 'JosefinSans',
                                fontSize: 20.0)),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: ListTile(
                        leading: Icon(Icons.location_on, color: Colors.teal),
                        title: Text(Details().home,
                            style: TextStyle(
                                color: Colors.teal.shade900,
                                fontFamily: 'JosefinSans',
                                fontSize: 20.0)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      FloatingActionButton(
                        onPressed: _share,
                        child: Icon(Icons.share),
                        backgroundColor: Colors.teal,
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

void _share() {
  final String text =
      "${Details().name} - ${Details().position} - ${Details().email} - ${Details().phone} - ${Details().work} - ${Details().home}";
  Share.share(text, subject: 'My Contact Information');
}
