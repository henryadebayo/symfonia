import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:symfonia/data/models/crypto_model.dart';
import 'package:symfonia/utils/constants.dart';

class CoingeckoServices {
  Future<List<CoinGeckoModel>?> getCrytoPrices() async {
    try {
      var url = Uri.parse(COINGECKO_URL);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        // List<dynamic> body = response.body as List;
        var data = json.decode(response.body);
        var payLoad = data
            .map<CoinGeckoModel>((item) => CoinGeckoModel.fromJson(item))
            .toList();
        return payLoad;
      } else {
        throw "unable to get prices at the moment please try aagin later ";
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
