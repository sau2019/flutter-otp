import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp/screens/authenticate/sign_in.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Home Screen'),
          backgroundColor: Colors.blue,
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Column(
            children: <Widget>[
              Spacer(),
              SizedBox(height: 20.0),
              // ignore: deprecated_member_use
              RaisedButton(
                  color: Colors.blue[400],
                  child: Text(
                    'Logout',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                        (route) => false);
                  }),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
