import 'package:flutter/material.dart';
import 'package:irespondph/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:irespondph/screens/login_screens.dart';


class registered extends StatefulWidget {
  static String id = 'registered';
  @override
  _registeredState createState() => _registeredState();
}
class _registeredState  extends State<registered> {
  final _auth = FirebaseAuth.instance;
  FirebaseUser RegisterefUser;

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
        child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 80.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
        Text(
        'REGISTERED!',
          textAlign: TextAlign.center,
        style: TextStyle(
        fontFamily: 'Teko',
        fontSize: 40.0,
        color: Color(0xFFFF9800),
        fontWeight: FontWeight.bold,

    ),
    ),
    Padding(
    padding: EdgeInsets.symmetric(vertical: 16.0),
    child: Material(
      color: Color(0xFFFF9800),
    borderRadius: BorderRadius.all(Radius.circular(30.0)),
    elevation: 5.0,
    child: MaterialButton(
    onPressed: () {
      Navigator.pushNamed(context, LoginScreen.id);
          },
    minWidth: 200.0,
    height: 42.0,
    child: Text(
    'Continue',
    style: TextStyle(color: Colors.white),
        ),
      ),
    ),
    ),
          ]
    ),
    ),
        ),
    );
  }

}