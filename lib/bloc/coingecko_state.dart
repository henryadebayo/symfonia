part of 'coingecko_bloc.dart';

@immutable
abstract class CoingeckoState {
  const CoingeckoState();
}

class CoingeckoGetPrice extends CoingeckoState {
  final CoingeckoServices coingeckoServices;
  const CoingeckoGetPrice({required this.coingeckoServices}) : super();
}

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
