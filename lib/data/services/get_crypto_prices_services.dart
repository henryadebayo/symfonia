import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:symfonia/data/models/crypto_model.dart';
import 'package:symfonia/utils/constants.dart';

class CoingeckoServices {
  Future<List?> getCrytoPrices() async {
    try {
      var url = Uri.parse(COINGECKO_URL);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        return body.toList();
      } else {
        throw "unable to get prices at the moment please try aagin later ";
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
