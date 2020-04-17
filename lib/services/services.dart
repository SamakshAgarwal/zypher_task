import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;

class Services {

  makeApiCall() async {
    print('called');
    String url =
        'https://backend-test-zypher.herokuapp.com/ebooks/activatePlan';
    var response = await http.post(
      url,
      body: {"planId": "6 months"},
    );
    var body = response.body;
    var json = jsonDecode(body);
    return json['status'];
  }

}
