import 'package:flutter/material.dart';
import 'package:irespondph/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';






class BlankScreen extends StatefulWidget {
  static String id = 'blank_screen';
  @override
  _BlankScreenState createState() => _BlankScreenState();
}

class _BlankScreenState extends State<BlankScreen> {
  final _auth = FirebaseAuth.instance;
  FirebaseUser loggedInUser;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    final user = await _auth.currentUser;
    try {
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
    body: SafeArea(
    child: Column(
    children: <Widget>[
      Center(
        child:
        CircleAvatar(
        radius: 70.0,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage ('images/Irespond.png'),
      ),
      ),



    Text(
    'I Respond Ph',
    style: TextStyle(
    fontFamily: 'Teko',
    fontSize: 40.0,
    color: Colors.deepOrange,
    fontWeight: FontWeight.bold,

    ),
    ),
      ],
    )
    ),
    );


  }
}
