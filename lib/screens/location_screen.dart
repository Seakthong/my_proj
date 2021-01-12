import 'package:flutter/material.dart';
import 'package:my_proj/constaint.dart';
import 'package:my_proj/screens/city_screen.dart';
import 'package:my_proj/services/weather.dart';

class LocationScreen extends StatefulWidget {
  final locationWhether;

  LocationScreen({this.locationWhether});

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  Weather weather = new Weather();
  int temp;
  String weatherIcon;
  String cityName;
  String weatherMessage;

  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWhether);
  }

  void updateUI(dynamic weatherData) {
    setState(() {
      if (weatherData == null) {
        return;
      }
      this.temp = (weatherData['main']['temp']).toInt();
      this.weatherIcon = this
          .weather
          .getWeatherIcon((weatherData['weather'][0]['id']).toInt());
      this.cityName = weatherData['name'];
      this.weatherMessage = this.weather.getMessage(this.temp);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/logo.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.8),
              BlendMode.dstATop,
            ),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButton(
                    onPressed: () async {
                      var weatherData = await this.weather.getLocation();
                      this.updateUI(weatherData);
                    },
                    child: Icon(Icons.near_me, size: 50),
                  ),
                  FlatButton(
                    onPressed: () async {
                      var typedName = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CityScreen(),
                        ),
                      );
                      if (typedName != null) {
                        var weatherData =
                            await weather.getCityWeather(typedName);
                        updateUI(weatherData);
                      }
                    },
                    child: Icon(Icons.location_city, size: 50),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Text(
                      '${this.temp} °',
                      style: kTitleTextStyle,
                    ),
                    Text(
                      '${this.weatherIcon}',
                      style: kTitleTextStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  '${this.weatherMessage} in ${this.cityName}',
                  textAlign: TextAlign.right,
                  style: kTitleTextStyle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
