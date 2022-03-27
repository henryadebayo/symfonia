part of 'coingecko_bloc.dart';

@immutable
abstract class CoingeckoState {
  const CoingeckoState();
}

class CoingeckoGetPrice extends CoingeckoState {
  const CoingeckoGetPrice() : super();
}
class CoingeckoLoaded extends CoingeckoState {
   List<CoinGeckoModel> price;
    CoingeckoLoaded({required this.price}) : super();
}

class NetworkException extends CoingeckoState {
  final errorMessage;
  const NetworkException(
    this.errorMessage,
  ) : super();
}
