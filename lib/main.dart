import 'package:flutter_otp/screens/authenticate/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 2,
        navigateAfterSeconds: new AfterSplash(),
        title: new Text(
          'Welcome To Mindstein Software',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        backgroundColor: Colors.orange,
        styleTextUnderTheLoader: new TextStyle(),
        loaderColor: Colors.white);
  }
}

class AfterSplash extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignIn(),
    );
  }
}
