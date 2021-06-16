import 'dart:convert';
import 'package:http/http.dart' as http;


class CityGetter {
  Future<List> getData(String pinCode) async {
    var url = Uri.parse('https://api.postalpincode.in/pincode/$pinCode');
    final response = await http.get(url,headers: {"Accept": "application/json"},);
    if (response.statusCode == 200) {
      String data=response.body;
      var decodeData=jsonDecode(data);
      return decodeData;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load data');
    }
  }
}
