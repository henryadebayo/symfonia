import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:symfonia/data/models/crypto_model.dart';
import 'package:symfonia/data/services/get_crypto_prices_services.dart';

part 'coingecko_event.dart';
part 'coingecko_state.dart';

class CoingeckoBloc extends Bloc<CoingeckoEvent, CoingeckoState> {
  final CoingeckoServices coingeckoServices;

  CoingeckoBloc({required this.coingeckoServices})
      : super(CoingeckoGetPrice(
            isLoading: true, coingeckoServices: CoingeckoServices()));
  @override
  Stream<CoingeckoState> mapEventToState(
    CoingeckoEvent event,
  ) async* {
    if (event is CoingeckoGetPriceEvent) {
      try {
        final prices = await coingeckoServices.getCrytoPrices();
        yield CoingeckoLoaded(
          prices!,
          isLoading: false,
        );
      } catch (e) {
        yield NetworkException("${e.toString()}", isLoading: false);
      }
    }
  }
}
