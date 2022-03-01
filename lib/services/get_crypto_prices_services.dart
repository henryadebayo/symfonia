import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:symfonia/models/crypto_model.dart';
import 'package:symfonia/utils/constants.dart';

class CoingeckoServices {
  List cyptoData = [];

  Future<List<CoinGeckoModel?>?> getCrytoPrices() async {
    try {
      var url = Uri.parse(COINGECKO_URL);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<dynamic> body = jsonDecode(response.body);
        List<CoinGeckoModel> data =
            body.map((dynamic item) => CoinGeckoModel.fromJson(item)).toList();
        cyptoData.add(data);
        return data;
      } else {
        throw "unable to get prices at the moment please try aagin later ";
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
