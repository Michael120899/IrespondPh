import 'package:flutter/material.dart';
import 'package:irespondph/screens/blank_screen.dart';
import 'package:irespondph/screens/login_screens.dart';
import 'package:irespondph/screens/registerd.dart';
import 'package:irespondph/screens/registration_screen.dart';
import 'package:irespondph/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';





void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(irespondph());
}
   class irespondph extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
   return MaterialApp(
     initialRoute: WelcomeScreen.id,
     routes:{
       WelcomeScreen.id: (context)=> WelcomeScreen(),
       LoginScreen.id : (context)=> LoginScreen(),
       RegistrationScreen.id: (context)=> RegistrationScreen(),
       BlankScreen.id:(context)=> BlankScreen(),
       registered.id:(context)=> registered(),
     },
   );
   }
   }







