import 'package:flutter/material.dart';

import 'body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = '/login_success';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login success!"),
        leading: SizedBox(),
      ),
      body: Body(),
    );
  }
}
