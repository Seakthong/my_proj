import 'package:flutter/material.dart';
import 'package:my_proj/screens/location_screen.dart';
import 'package:my_proj/services/http.dart';
import 'package:my_proj/services/location.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_proj/services/weather.dart';

const String owKey = 'fc786e9d19e17f7a2f9f79962ec9ff8f';

class LoadingScreen extends StatefulWidget {
  static String identity = 'loading_screen';
  LoadingScreen({Key key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    print('Loading Screen');
    this.getLocation();
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  void getLocation() async {
    Weather weather = new Weather();
    var data = await weather.getLocation();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LocationScreen(locationWhether: data),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          size: 100,
          color: Colors.white,
        ),
      ),
    );
  }
}
