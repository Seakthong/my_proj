import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_proj/components/rounded_button_chat.dart';
import 'package:my_proj/screens/flash_chat/login_screen.dart';
import 'package:my_proj/screens/flash_chat/registration_screen.dart';
import 'package:my_proj/screens/input_page.dart';
import 'package:my_proj/screens/loading_screen.dart';
import 'package:my_proj/screens/price_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static String identity = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this, //
    );
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.decelerate);
    animationController.forward();
    animationController.addListener(() {
      setState(() {});
      print(animation.value);
    });
    this.registrationFirebase();
  }

  void registrationFirebase() async {
    print('this is called');
    await Firebase.initializeApp();
    print('this is called end');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(animation.value),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                SizedBox(
                  child: TypewriterAnimatedTextKit(
                    onTap: () {
                      print("Tap Event");
                    },
                    text: [
                      "SQ Chat",
                    ],
                    textStyle: TextStyle(
                      fontSize: 45.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButtonChat(
              color: Colors.lightBlueAccent,
              onPressed: () {
                //Go to registration screen.
                Navigator.pushNamed(context, LoginScreen.identity);
              },
              title: 'Login',
            ),
            RoundedButtonChat(
              color: Colors.blueAccent,
              onPressed: () {
                //Go to registration screen.
                Navigator.pushNamed(context, RegistrationScreen.identity);
              },
              title: 'Register',
            ),
            RoundedButtonChat(
              color: Colors.purpleAccent,
              onPressed: () {
                //Go to registration screen.
                Navigator.pushNamed(context, LoadingScreen.identity);
              },
              title: 'Weather App',
            ),
            RoundedButtonChat(
              color: Colors.purpleAccent,
              onPressed: () {
                //Go to registration screen.
                Navigator.pushNamed(context, PriceScreen.identity);
              },
              title: 'Price App',
            ),
            RoundedButtonChat(
              color: Colors.purpleAccent,
              onPressed: () {
                //Go to registration screen.
                Navigator.pushNamed(context, InputPage.identity);
              },
              title: 'BMI App',
            ),
          ],
        ),
      ),
    );
  }
}
