import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future getdata() async {
    http.Response response = await http.get(Uri.parse(url));
    try{
      if (response.statusCode == 200) {
        String data = response.body;
        // var longitude = jsonDecode(data)['coord']['lon'];
        // var temperature = jsonDecode(data)['main']['temp'];
        // var cityname = jsonDecode(data)['name'];
        // print(longitude);
        // print(temperature);
        // print(cityname);
        return jsonDecode(response.body);
      } else {
        print(response.statusCode);
      }}catch(e){
        print("hello");
        print(e);
      }
  }
}