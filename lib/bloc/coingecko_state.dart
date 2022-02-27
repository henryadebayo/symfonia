part of 'coingecko_bloc.dart';

@immutable
abstract class CoingeckoState {
  final bool isLoading;
  const CoingeckoState({
    required this.isLoading,
  });
}

class CoingeckoGetPrice extends CoingeckoState {
  const CoingeckoGetPrice({required bool isLoading})
      : super(isLoading: isLoading);
}

class CoingeckoLoaded extends CoingeckoState {
  const CoingeckoLoaded({required bool isLoading})
      : super(isLoading: isLoading);
}

class NetworkException extends CoingeckoState {
  const NetworkException({required bool isLoading})
      : super(isLoading: isLoading);
}
