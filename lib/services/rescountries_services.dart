import 'dart:convert';
import 'dart:developer';

import 'package:api_rest/models/countries_models_v2/country_model.dart';
import 'package:http/http.dart' as http;

class ResCountriesServices {
  void getCountries({required String pais}) {
    //var url = Uri.parse("https://restcountries.com/v2/name/$pais");
    var url = Uri.parse("https://restcountries.com/v2/all");
    print(url);
    http.get(url).then((response) {
      print(response.body);

      final List<dynamic> bodyDecoded = jsonDecode(response.body);
      print(bodyDecoded);

      /// final peru = Country.fromJson(bodyDecoded);
      /// type 'List<dynamic>' is not a subtype of type 'Map<String, dynamic>'

      /// (Instance of 'Country')
      final paises = bodyDecoded.map((element) {
        try {
          return Country.fromJson(element);
        } catch (e) {
          log("$e");
          return Country();
        }
      });

      ///[Instance of 'Country']
      final List<Country> listPaises = paises.toList();

      print(paises);
      print(listPaises.first.name);

      for (var i = 0; i < listPaises.length; i++) {
        if (listPaises[i].name != null) {
          print(listPaises[i].name);
        }
      }
    });
  }
}
