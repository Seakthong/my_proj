import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlatButton(
                onPressed: () {
                  print("ok you win ");
                  print(this);
                },
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white70,
                  backgroundImage: AssetImage('images/logo.png'),
                ),
              ),
              Text(
                'Mr. Seakthong',
                style: TextStyle(
                  fontFamily: 'LobsterTwo',
                  fontWeight: FontWeight.normal,
                  fontSize: 42,
                  color: Colors.white70,
                ),
              ),
              Text(
                'Flutter Tester',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 4.0,
                color: Colors.white,
              ),
              Card(
                color: Colors.black12,
                margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.white70,
                        size: 32,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Text(
                        '+855 (0)90909090',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.black12,
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.white70,
                        size: 32,
                      ),
                      SizedBox(width: 16),
                      Text(
                        'seakthong@sq.com',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.black12,
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.alarm,
                        color: Colors.white70,
                        size: 32,
                      ),
                      title: Text(
                        'Contact Me Now',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white70,
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
