class CryptoApi {
  static final _binance_key = 'J6m5cBJqFDxtRhlG1R47EcN8a5ZwcBFuoD3vd8Vn8Dheaf73Femv64ICtF8m89SQ';
  static final _messari_key = '868c0547-8795-4049-8dbb-d627bf177831';


static Future<List<Currency>> getCurrencies() async {
    final bUrl = 'https://api.binance.com/api/v3/exchangeInfo';
    final mUrl = 'https://data.messari.io/api/v1/assets/btc/metrics/market-data';

    final responce = await http.get(Uri.parse(url));
    final body = json.decode(response.body) as List;

    return body.map((item) => Currency.fromJson(item)).toList();
  }
}