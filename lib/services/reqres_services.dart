import 'dart:convert';
import 'dart:developer';

import 'package:api_rest/models/persons_model.dart';
import 'package:http/http.dart' as http;

class ServicesReqresApi {
  PersonsModel personsModel = PersonsModel();
  void getReqRespServie() {
    var url = Uri.parse("https://reqres.in/api/users?page=2");
    print(url);

    http.get(url).then((response) {
      print(response.body);
      personsModel = PersonsModel.fromJson(jsonDecode(response.body));
      print(personsModel.data);
      print(personsModel.data!.first.email);
      personsModel.data?.forEach((element) {
        print(element.email);
      });
    }).catchError((err) {});

    print("Hola desde mi API");
  }
}
