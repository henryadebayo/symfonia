part of 'coingecko_bloc.dart';

@immutable
abstract class CoingeckoState {
  const CoingeckoState();
}

class CoingeckoGetPrice extends CoingeckoState {
//  final CoingeckoServices coingeckoServices;
  const CoingeckoGetPrice() : super();
}
//{required this.coingeckoServices}
// : super(CoingeckoGetPrice(coingeckoServices: CoingeckoServices()))

class CoingeckoLoaded extends CoingeckoState {
   List<CoinGeckoModel> price;
  // setprice (prices) {
  //   price = prices;
  // }
    CoingeckoLoaded({required this.price}) : super();
}

class NetworkException extends CoingeckoState {
  final errorMessage;
  const NetworkException(
    this.errorMessage,
  ) : super();
}
