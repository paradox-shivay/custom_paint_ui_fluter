import 'package:flutter/material.dart';
import 'package:loginui_01/Background/BackgroundSignUp.dart';
import 'package:loginui_01/Page/LoginPage.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomPaint(
        //**What is
        painter: BackgroundSignUp(),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: <Widget>[
                  _getHeader(),
                  _getTextFields(),
                  _getSignIn(),
                  _getBottomRow(context),
                ],
              ),
            ),
            _getBackBtn(context),
          ],
        ),
      ),
    );
  }
}

_getBackBtn(context) {
  return Positioned(
    top: 35.0,
    left: 25.0,
    child: GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
      child: Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
      ),
    ),
  );
}

_getHeader() {
  return Expanded(
    flex: 3,
    child: Container(
      alignment: Alignment.bottomLeft,
      child: Text(
        'Create\nAccount',
        style: TextStyle(color: Colors.white, fontSize: 40),
      ),
    ),
  );
}

_getTextFields() {
  return Expanded(
    flex: 4,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 15,
        ),
        TextField(
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              labelText: 'Name',
              labelStyle: TextStyle(color: Colors.white)),
        ),
        SizedBox(
          height: 15,
        ),
        TextField(
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              labelText: 'Email',
              labelStyle: TextStyle(color: Colors.white)),
        ),
        SizedBox(
          height: 15,
        ),
        TextField(
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              labelText: 'Password',
              labelStyle: TextStyle(color: Colors.white)),
        ),
        SizedBox(
          height: 25,
        ),
      ],
    ),
  );
}

_getSignIn() {
  return Expanded(
    flex: 1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Sign Up',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.blueGrey.shade800,
          radius: 40,
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}

_getBottomRow(context) {
  return Expanded(
    flex: 2,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
          child: Text(
            'Sign In',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          '',
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    ),
  );
}
