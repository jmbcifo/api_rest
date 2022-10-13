import 'dart:convert';

import 'package:api_rest/models/persons_model.dart';
import 'package:http/http.dart' as http;

class ServicesReqresApi {
  void getReqRespServie() {
    var url = Uri.parse("https://reqres.in/api/users?page=2");
    print(url);
    http.get(url).then((response) {
      print(response.body);
      final resReqRes = PersonsModel.fromJson(jsonDecode(response.body));
      print(resReqRes);
    });
    print("Hola desde mi API");
  }
}
