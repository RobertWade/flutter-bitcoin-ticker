import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const bitcoinAverageURL =
    'https://apiv2.bitcoinaverage.com/indices/global/ticker';

class CoinData {
  dynamic getCoinData(num index) async {
    var currentCrypto = currenciesList[index];
    var response = await http.get(
        '$bitcoinAverageURL/BTC$currentCrypto');
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      var price = jsonResponse['last'];
      return price;
    } else {
      return null;
    }
  }
}
