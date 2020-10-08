import 'package:business_card/homepage.dart';
import 'package:flutter/material.dart';
import 'indexpage.dart';
// import 'package:wc_flutter_share/wc_flutter_share.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

// class BusinessCard extends StatefulWidget {
//   BusinessCard();
//   @override
//   _BusinessCardState createState() => _BusinessCardState();

//     }

//   class _BusinessCardState extends State<BusinessCard> {
//   @override
//   Widget build(BuildContext context) {
//    return Scaffold();
//   }
// }
