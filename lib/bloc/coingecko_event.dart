part of 'coingecko_bloc.dart';

@immutable
abstract class CoingeckoEvent {}

class CoingeckoGetPriceEvent extends CoingeckoEvent {}

class CoingeckoLoadedEvent extends CoingeckoEvent {}

class NetworkExceptionEvent extends CoingeckoEvent {}
