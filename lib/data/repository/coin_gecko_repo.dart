import 'package:symfonia/data/models/crypto_model.dart';
import 'package:symfonia/data/services/get_crypto_prices_services.dart';

abstract class CoinGekcoRepo {
  Future<CoinGeckoModel> getPrices();
}

class Getprices implements CoinGekcoRepo {
  @override
  Future<CoinGeckoModel> getPrices() async {
    final CoingeckoServices coingeckoServices;
    final prices = await coingeckoServices.getCrytoPrices();
    return prices.toList();
  }
}
