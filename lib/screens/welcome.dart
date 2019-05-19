import 'package:flutter/material.dart';
import './signup.dart';
import './signin.dart';

class WelcomeScreenBody extends StatelessWidget {

  Widget getLogoName() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Coaster',
        style: TextStyle(fontFamily: 'Zrnic Rg', color: Color(0xFF27963c), fontSize: 48.0, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: 'Cart',
            style: TextStyle(fontFamily: 'Monoton', color: Color(0xFFb51b2c), fontSize: 48.0)
          )
        ]
      )
    );
  }

  Widget getSigninButton(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(color: Color(0xFF1b95c4), borderRadius: BorderRadius.circular(10.0)),
        width: MediaQuery.of(context).size.width-100.0,
        height: 50.0,
        child: Center(
          child: Text(
            'Sign In',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 18.0))),
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SigninPage()));
      },
    );
  }

  Widget getSignupButton(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.0),
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Color(0xFF1b95c4), width: 2.0)
        ),
        width: MediaQuery.of(context).size.width-100.0,
        height: 50.0,
        child: Center(
          child: Text(
            'Create an account',
            style: TextStyle(
              color: Color(0xFF1b95c4),
              fontWeight: FontWeight.w500,
              fontSize: 18.0
            )
          )
        ),
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupPage()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image:AssetImage('assets/background.png'),
          fit: BoxFit.cover
        )
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/cart.png', scale: 6.0),
              SizedBox(height: 20.0),
              getLogoName(),
              SizedBox(height: 40.0),
              getSigninButton(context),
              SizedBox(height: 20.0),
              getSignupButton(context),
            ]
          )
        )
      )
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeScreenBody(),
    );
  }
}