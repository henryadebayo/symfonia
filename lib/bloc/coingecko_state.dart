part of 'coingecko_bloc.dart';

@immutable
abstract class CoingeckoState {
  final bool isLoading;

  const CoingeckoState({
    required this.isLoading,
  });
}

class CoingeckoGetPrice extends CoingeckoState {
  final CoingeckoServices coingeckoServices;
  const CoingeckoGetPrice(
      {required bool isLoading, required this.coingeckoServices})
      : super(isLoading: isLoading);
}

class CoingeckoLoaded extends CoingeckoState {
  final List<CoinGeckoModel> price;
  const CoingeckoLoaded(this.price, {required bool isLoading})
      : super(isLoading: isLoading);
}

class NetworkException extends CoingeckoState {
  final errorMessage;
  const NetworkException(
    this.errorMessage, {
    required bool isLoading,
  }) : super(isLoading: isLoading);
}
