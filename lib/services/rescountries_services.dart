import 'package:http/http.dart' as http;

class ResCountriesServices {
  void getCountries() {
    var url = Uri.parse("https://restcountries.com/v2/name/peru");
    print(url);
  }
}
