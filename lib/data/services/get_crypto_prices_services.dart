import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:symfonia/data/models/crypto_model.dart';
import 'package:symfonia/utils/constants.dart';

import '../api_status.dart';

// class CoingeckoServices {
//
//   List<CoinGeckoModel> rawData = [];
//
//   Future<CoinGeckoModel> getCrytoPrices() async {
//     try {
//       var url = Uri.parse(COINGECKO_URL);
//       var response = await http.get(url);
//       if (response.statusCode == 200) {
//         // List<dynamic> body = response.body as List;
//
//
//          return CoinGeckoModelFromJson(response.body);
//
//       } else {
//         throw "unable to get prices at the moment please try again later ";
//       }
//     } catch (e) {
//       print(e.toString());
//     }
//     throw "null";
//   }
// }

class CoingeckoServices {
  Future<List<CoinGeckoModel>> getCrytoPrices() async {
    try {
      var url = Uri.parse(COINGECKO_URL);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        final List<CoinGeckoModel> prices = coinGeckoModelFromJson(response.body);
        // List<dynamic> body = response.body as List;
        return prices;

      } else {
        Failure(message: "unable to get prices at the moment please try again later ");
      }
    } catch (e) {
      print(e.toString());
    }
    throw "null";
  }
}
