import 'package:my_proj/services/http.dart';
import 'package:my_proj/services/location.dart';

const owKey = 'fc786e9d19e17f7a2f9f79962ec9ff8f';
const openWeatherUrl = 'https://api.openweathermap.org/data/2.5/weather';

class Weather {
  Future<dynamic> getLocation() async {
    Location location = new Location();
    await location.getCurrentLocation();
    NetworkHelper nh = NetworkHelper(
        url:
            '$openWeatherUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$owKey&units=metric');
    return await nh.getData();
  }

  Future<dynamic> getCityWeather(String cityName) async {
    var url = '$openWeatherUrl?q=$cityName&appid=$owKey&units=metric';
    NetworkHelper nh = NetworkHelper(url: url);
    return await nh.getData();
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '< 300';
    } else if (condition < 400) {
      return '< 400';
    } else if (condition < 600) {
      return '< 600';
    } else if (condition < 700) {
      return '< 700';
    } else if (condition < 800) {
      return '< 800';
    } else if (condition == 800) {
      return '== 800';
    } else if (condition <= 804) {
      return '<= 804';
    } else {
      return 'ELSE';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s > 25 time';
    } else if (temp > 20) {
      return 'It\'s > 20 time';
    } else if (temp < 10) {
      return 'It\'s < 10 time';
    } else {
      return 'It\'s ELSE time';
    }
  }
}
