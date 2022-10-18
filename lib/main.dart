import 'package:api_rest/services/reqres_services.dart';
import 'package:api_rest/services/rescountries_services.dart';
import 'package:api_rest/services/rescoutries_services_v3.dart';

void main() {
  //ServicesReqresApi().getReqRespServie();
  //ResCountriesServices().getCountries(pais: "peru");
  ResCountriesServicesV3().getCountries(pais: "peru");
}
