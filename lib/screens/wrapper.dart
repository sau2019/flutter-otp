import 'package:flutter_otp/models/user.dart';
import 'package:flutter_otp/screens/authenticate/sign_in.dart';

import 'package:flutter_otp/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    //print(user);

    // return either the Home or Authenticate widget
    if (user == null) {
      return SignIn();
    } else {
      return Home();
    }
  }
}
