import 'package:flutter/material.dart';
import 'helpers/Constants.dart';
 
// 1
class LoginPage extends StatelessWidget {
 
  // 2
  //final _pinCodeController = TextEditingController();
 
  // 3
  @override
  Widget build(BuildContext context) {
     // 3a
    final logo = CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: bigRadius,
        child: appLogo,
    );
 
     // 3c
    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(homePageTag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.blue,
        child: Text(loginButtonText, style: TextStyle(color: Colors.white)),
      ),
    );
 
     // 3d
    return Scaffold(
      backgroundColor: appDarkGreyColor,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: bigRadius),
            SizedBox(height: buttonHeight),
            loginButton
          ],
        ),
      ),
    );
  }
}