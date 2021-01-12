import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({this.url});
  final String url;

  Future getData() async {
    http.Response response = await http.get(this.url);

    if (response.statusCode != 200) {
      print(response.statusCode);
    } else {
      String data = response.body;
      var jData = jsonDecode(data);
      return jData;
    }
  } // ef getData

} // ec Class