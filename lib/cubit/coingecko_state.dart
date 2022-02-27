part of 'coingecko_cubit.dart';

@immutable
abstract class CoingeckoState {
  const CoingeckoState();
}

class CoingeckoInitial extends CoingeckoState {
const CoingeckoInitial();
}

class CoingeckoLoading extends CoingeckoState{
  const CoingeckoLoading();
}


class CoingeckoLoaded extends CoingeckoState{
  final  CoinGecko coinGecko;
  const CoingeckoLoaded(this.coinGecko);
}
