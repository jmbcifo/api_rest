import 'dart:convert';

import 'package:api_rest/models/countries_models/country_model.dart';
import 'package:http/http.dart' as http;

class ResCountriesServices {
  void getCountries({required String pais}) {
    var url = Uri.parse("https://restcountries.com/v2/name/$pais");
    print(url);
    http.get(url).then((response) {
      print(response.body);

      final List<dynamic> bodyDecoded = jsonDecode(response.body);
      print(bodyDecoded);

      /// final peru = Country.fromJson(bodyDecoded);
      /// type 'List<dynamic>' is not a subtype of type 'Map<String, dynamic>'

      /// (Instance of 'Country')
      final paises = bodyDecoded.map((element) => Country.fromJson(element));

      ///[Instance of 'Country']
      final List<Country> listPaises = paises.toList();

      print(paises);
      print(listPaises.first);
      print(listPaises.where((element) => element.area == 23.0).first);
      print(listPaises.where((element) => element.name == "peru").first);
    });
  }
}
