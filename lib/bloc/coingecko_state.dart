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
  final List<CoinGeckoModel> price;
  const CoingeckoLoaded(this.price) : super();
}

class NetworkException extends CoingeckoState {
  final errorMessage;
  const NetworkException(
    this.errorMessage,
  ) : super();
}
