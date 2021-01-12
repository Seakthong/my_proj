import 'package:flutter/material.dart';
import 'package:my_proj/screens/flash_chat/chat_screen.dart';
import 'package:my_proj/screens/flash_chat/login_screen.dart';
import 'package:my_proj/screens/flash_chat/registration_screen.dart';
import 'package:my_proj/screens/flash_chat/welcome_screen.dart';
import 'package:my_proj/screens/input_page.dart';
import 'package:my_proj/screens/loading_screen.dart';
import 'package:my_proj/screens/price_screen.dart';
import 'package:my_proj/screens/result_page.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith(
      //   textTheme: TextTheme(
      //     bodyText2: TextStyle(color: Colors.green),
      //     bodyText1: TextStyle(color: Colors.green),
      //   ),
      //   primaryColor: Colors.lightBlue,
      //   scaffoldBackgroundColor: Colors.white,
      // ),
      initialRoute: WelcomeScreen.identity,
      routes: {
        WelcomeScreen.identity: (context) => WelcomeScreen(),
        LoginScreen.identity: (context) => LoginScreen(),
        RegistrationScreen.identity: (context) => RegistrationScreen(),
        ChatScreen.identity: (context) => ChatScreen(),
        LoadingScreen.identity: (context) => LoadingScreen(),
        PriceScreen.identity: (context) => PriceScreen(),
        InputPage.identity: (context) => InputPage(),
      },
    );
  }
}

class BitCoinTinker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.lightBlue,
          scaffoldBackgroundColor: Colors.white),
      home: PriceScreen(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingScreen(),
        '/result': (context) => ResultPage()
      },
    );
  }
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1C2A37),
        scaffoldBackgroundColor: Color(0xFF161F27),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      // ThemeData(
      //   primaryColor: Color(0xFF1C2A37),
      //   scaffoldBackgroundColor: Color(0xFF3D4447),
      //   accentColor: Color(0xFF2E404E),
      //   textTheme: TextTheme(
      //     bodyText2: TextStyle(
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      // home: InputPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => ResultPage()
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[50],
        appBar: AppBar(
          title: Text('Mr. Seakthong'),
          leading: Image(
            image: AssetImage('images/logo.png'),
          ),
          backgroundColor: Colors.purpleAccent,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 128.0,
                width: 64.0,
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                color: Colors.white,
                child: Text('hhh'),
              ),
              Container(
                height: 128.0,
                width: 128.0,
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                color: Colors.white,
                child: Text('hhh'),
              ),
              Container(
                height: 64.0,
                width: 64.0,
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                color: Colors.white,
                child: Text('hhh'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
