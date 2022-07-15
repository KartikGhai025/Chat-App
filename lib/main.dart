import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/screens/welcome_screen.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/registration_screen.dart';
import 'package:chat_app/screens/chat_screen.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: 'welcomescreen',
      routes: {
        'welcomescreen': (context)=> WelcomeScreen(),
        'loginscreen': (context)=> LoginScreen(),
        'registrationscreen': (context)=> RegistrationScreen(),
        'chatscreen': (context)=> ChatScreen()
      },
    );
  }
}
