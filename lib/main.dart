import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mkonnect/Screens/Splash.dart';

//flutter build apk --build-name=1.0 --build-number=1


//initialize firebase 
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), //app will start from splash
    );
  }
}